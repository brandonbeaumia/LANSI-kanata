

# LANSI
Welcome to the LANSI keyboard layout, built in Kanata! LANSI is broadly compatible, configured to improve most keys found on laptops while remaining fully functional with as few as 39 keys.

* Nearly all QWERTY defaults remain, and additional functionality should not interfere with current muscle memory.
* It features ultra-fast latency-free typing without misfires by avoiding alpha key overloading. Death to home row mods!
* It leans away from timing pressure and timing dependency for all but the most rarely used keys and features.
* It prioritizes fast and accessible modifier & shortcut combos, especially from the left hand for simultaneous mousing.
* It allows what would otherwise be right-handed shortcuts without leaving the mouse via mirroring (sounds harder than it is!).

## Walkthrough
### Base Layer
![Diagram showing base layer of LANSI layout](/images/base.png)
* Of the alpha chars, all but `Z` and `.` remain untouched. These send `alt` when held.
* Left shift sends `backspace` when tapped, and right shift sends `delete` when tapped.
* Right shift slides inward to replace the `/` key, allowing an additional ergonomic trick I'll cover later.
* Tapping `,.` together outputs a `!`, and shifting the `,.` combo outputs `?`.
* The space bar sends `space` when tapped or held, as it usually does.
*   If a modifier is already held, the spacebar sends `space` when tapped and `meta` when held.
* Holding the key to the right of the space bar activates the `numsym` layer; let's check that out next.

### Numbers + Symbols Layer
![Diagram showing numsym layer of LANSI layout](/images/numsym.png)
* The numsym layer manages to combine all data entry and programming tasks.
* Only the ^%|~ characters require an additional keypress (shift) or timer (holding) to activate.
* No modifiers, symbols, or other control characters are overwritten from the base layer.
* In this layer, tapping `_-` (`we`) sends `@`. The `!?` combo also still works.

Let go of the numsym key and hold `caps` for the Extend layer.

### Extend Layer
![Diagram showing extend layer of LANSI layout](/images/extend.png)
* Navigation and media clusters on the right hand, laid out in three matching HJKL rows.
* A comfy set of modifiers is featured on home row here, because your left pinky is already busy holding this layer on. Having Control, Shift, Alt and Arrow/Nav keys so easily combined with each other takes text editing to a new level anywhere Vim motions aren't supported.
* The Meta key is found on the space bar in the Extend layer, where it is often paired with arrow keys for window management.
* The game layer key makes the keyboard regular ANSI again, but leaves this extend layer available via Caps.
* Pretty much all the other shortcuts on the left hand here are optional, they're just things that I happen to use a lot or wanted more comfortable access to. You can look at the config file definitions for rationale.

That's it for the Extend layer! Instead of letting go of caps lock, hold the right thumb key to activate the Mouse layer. You can then safely let go of caps lock.

### Mouse Layer
![Diagram showing mouse layer of LANSI layout](/images/mouse.png)
* The mouse layer allows you to do some quick mousing without taking your hands off the keyboard.
* Mouse directions are on the ESDF keys. This leaves your regular Ctrl and Shift fingers available.
* Mouse clicks are on the right hand, lined up with a regular mouse.
* Scrolling sideways is to the side, and scrolling up and down are on the index fingers' up/down. 
* Hold `L` to slow down the cursor when you near your target, and `'` to throw it across the screen.

Let go of the right thumb key to go back to the base layer.

### Function Layer
![Diagram showing function layer of LANSI layout](/images/func.png)
From the base layer, instead of holding the right thumb key, *tap* it instead. This will enable the function layer for 1000ms.
* Holding any of these Fkeys sends `alt+Fkey`.
* All modifiers on the function layer stop the timer.

### Ultra "Layer"
Hold `tab` or the (new) `enter` key to activate Ultra.
* Adds `Ctrl+Alt+Meta` to all alphanumeric keys, and *also* adds `Shift` if the alphanumeric key is held.
* Results in two full sets of user-definable shortcuts for app launching, window management, pro apps, etc.

### Mirroring
If the mouse back button is held, all alphanumeric keys on the left half of the board send their *mirrored* output instead. So f becomes j, d becomes k, etc. Next time you need to Ctrl+Y, Ctrl+O, Ctrl+H, etc, give it a shot. Eventually that grows into short keywords, app launcher searches, or the first few characters of a dropdown box: it's really flowy to not have to leave the mouse for just a couple presses, no matter where they are on the keyboard. There are also some non-standard "mirrors" (tab becoming shift-tab, for example) that solve other ergonomics issues.