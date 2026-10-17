#!/usr/bin/env bash
# ==============================================================================
# Cursor Speed Daemon for KDE Plasma + Kanata
# 
# Listens to a named pipe (/tmp/cursor_speed_fifo) for speed commands
# (slow, reg, fast) and updates pointer acceleration via KDE's KWin D-Bus interface.
#
# Define your devices by Name and their speeds: "Device Name|SlowSpeed|RegSpeed|FastSpeed"
# To jumpstart your TARGETS variable (including current speed setting), run this one-liner:
# for d in $(qdbus org.kde.KWin | grep '/org/kde/KWin/InputDevice/event'); do ev=$(basename "$d"); if udevadm info --query=property --name=/dev/input/$ev | grep -qE 'ID_INPUT_(MOUSE|TOUCHPAD)=1'; then s=$(qdbus org.kde.KWin "$d" org.freedesktop.DBus.Properties.Get org.kde.KWin.InputDevice pointerAcceleration 2>/dev/null); if [[ "$s" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then n=$(qdbus org.kde.KWin "$d" org.freedesktop.DBus.Properties.Get org.kde.KWin.InputDevice name 2>/dev/null); echo "\"$n|$d|slow|$s|fast\""; fi; fi; done

TARGETS=(
    "ELAN0735:00 04F3:316C Touchpad|-0.7|0.0|0.5"
    "Logitech G305|-0.7|0.0|0.5"
    "kanata|-0.7|0.0|0.5"
    # Note: You must start Kanata before this daemon so it can successfully resolve Kanata's virtual device.
)

# Kanata Configuration Example Lines:
#
#   (defvirtualkeys
#     brake-on (cmd sh -c "echo slow > /tmp/cursor_speed_fifo")
#     brake-off (cmd sh -c "echo reg > /tmp/cursor_speed_fifo")
#   )
#   (defalias
#     brake (multi (on-press tap-vkey brake-on) (on-release tap-vkey brake-off))
#   )
#
# ==============================================================================

FIFO="/tmp/cursor_speed_fifo"

# Ensure the named pipe exists and is valid
if [ -e "$FIFO" ] && [ ! -p "$FIFO" ]; then
    rm -f "$FIFO"
fi
[ -p "$FIFO" ] || mkfifo "$FIFO"

# Resolve device names to current event paths once at startup
RESOLVED_DEVICES=()
kwin_devices=$(qdbus org.kde.KWin | grep '/org/kde/KWin/InputDevice/event' 2>/dev/null)

for target in "${TARGETS[@]}"; do
    # Skip standalone comment lines inside the array if any exist
    [[ "$target" =~ ^# ]] && continue

    IFS='|' read -r target_name slow reg fast <<< "$target"
    found_path=""
    
    for d in $kwin_devices; do
        current_name=$(qdbus org.kde.KWin "$d" org.freedesktop.DBus.Properties.Get org.kde.KWin.InputDevice name 2>/dev/null)
        if [ "$current_name" = "$target_name" ]; then
            found_path="$d"
            break
        fi
    done
    
    if [ -n "$found_path" ]; then
        RESOLVED_DEVICES+=("$found_path|$slow|$reg|$fast")
        echo "Daemon mapped '$target_name' -> $found_path"
    else
        echo "Warning: Could not find active device matching '$target_name'" >&2
    fi
done

# Continuously read from the pipe
while true; do
    if read -r ACTION < "$FIFO"; then
        case "$ACTION" in
            slow|reg|fast)
                for item in "${RESOLVED_DEVICES[@]}"; do
                    IFS='|' read -r dev slow reg fast <<< "$item"
                    
                    case "$ACTION" in
                        slow) target_speed="$slow" ;;
                        reg)  target_speed="$reg"  ;;
                        fast) target_speed="$fast" ;;
                    esac

                    qdbus org.kde.KWin "$dev" pointerAcceleration "$target_speed" >/dev/null
                done
                ;;
        esac
    fi
done