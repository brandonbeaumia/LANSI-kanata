

# LANSI
Welcome to the LANSI keyboard layout, built in Kanata! LANSI is broadly compatible, configured to improve most keys found on laptops while remaining fully functional with as few as 39 keys.

* Nearly all QWERTY defaults remain, and extra functionality won't interfere with current muscle memory.
* latency-free typing without misfires by avoiding alpha key overloading. No home row mods.
* leans away from timing dependency for all but the most rarely used keys and features.
* prioritizes fast and accessible modifier combos, especially from the left hand for simultaneous mousing.
* allows right-handed shortcuts without leaving the mouse via mirroring (sounds harder than it is!).

## Walkthrough
### Base Layer
![Diagram showing base layer of LANSI layout](/images/base.png)
* Of the alpha chars, all but `Z` and `.` remain untouched. These send `alt` when held.
* Left shift sends `backspace` when tapped, and right shift sends `delete` when tapped.
* Right shift slides inward to replace the `/` key, allowing an additional ergonomic trick I'll cover later.
* Tapping `,.` together outputs a `!`, and shifting the `,.` combo outputs `?`.
* The space bar sends `space` when tapped or held, as it usually does.
* If a modifier is already held, the spacebar sends `space` when tapped and `meta` when held.

Holding the key to the right of the space bar activates the `numsym` layer; let's check that out next.

### Numbers + Symbols Layer
![Diagram showing numsym layer of LANSI layout](/images/numsym.png)
#### The numsym layer manages to combine all data entry and programming tasks.
* Only the `^%|~` characters require an additional keypress (shift) or timer (holding) to activate.
* No modifiers, symbols, or other control characters are overwritten from the base layer.
* In this layer, tapping `_-` (`we`) sends `@`. The `!?` combo also still works.

Let go of the numsym key and hold `caps` for the Extend layer.

### Extend Layer
![Diagram showing extend layer of LANSI layout](/images/extend.png)
* Navigation and media clusters on the right hand, laid out in three matching `HJKL` rows.
* Callum-style "sticky" modifiers are on home row here because your pinky is already holding this layer on.
* Having modifiers and `Arrow/Nav` keys together dramatically upgrades text editing.
* The `Meta` key is found on the space bar here, often paired with arrow keys for window management.
* The `game` key swaps between LANSI and ANSI, leaving this extend layer available via Caps.
* The Extend layer's left side keys are useful when your right hand is on the mouse (enter, delete, etc).

Instead of letting go of caps lock, hold the right thumb key while in the Extend layer to activate the Mouse layer. You can then safely let go of caps lock.

### Mouse Layer
![Diagram showing mouse layer of LANSI layout](/images/mouse.png)
#### The mouse layer allows you to do some quick mousing without taking your hands off the keyboard.
* Mouse directions are on the ESDF keys. This leaves your regular Ctrl and Shift fingers available.
* Mouse clicks are on the right hand, lined up with a regular mouse.
* Scrolling sideways is to the side, and scrolling up and down are on the index fingers' up/down. 
* Hold `L` to slow down the cursor when you near your target, and `'` to throw it across the screen.

Let go of the right thumb key to go back to the base layer.

### Function Layer
![Diagram showing function layer of LANSI layout](/images/func.png)
#### From the base layer, instead of holding the right thumb key, *tap* it instead. This enables the function layer for 1000ms.
* Holding any of these Fkeys sends `alt+Fkey`.
* All modifiers on the function layer stop the timer.

### Ultra "Layer"
#### Hold `tab` or the (new) `enter` key to activate Ultra.
* Adds `Ctrl+Alt+Meta` to all alphanumeric keys, and *also* adds `Shift` if the alphanumeric key is held.
* Results in two full sets of user-definable shortcuts for app launching, window management, pro apps, etc.

### Mirroring
If the mouse back button is held, all alphanumeric keys on the left half of the board send their *mirrored* output instead. So f becomes j, d becomes k, etc. Next time you need to Ctrl+Y, Ctrl+O, Ctrl+H, etc, give it a shot. Eventually that grows into short keywords, app launcher searches, or the first few characters of a dropdown box: it's really flowy to not have to leave the mouse for just a couple presses, no matter where they are on the keyboard. There are also some non-standard "mirrors" (tab becoming shift-tab, for example) that solve other ergonomics issues.

### Wide Mod
There is a full column of keys unused to the far right (enter, right shift, and ] key). Instead of leaving this unused, we can instead slide the right hand keys over by one full key. This puts your right thumb closer to the `ralt` thumb key. You can also avoid using the `lalt` thumb key by using the Extend mods.

### Special Character Typing
All alpha keys output their character immediately and repeat when held, just as they always have. However, if you hold an alpha key *and* press+release another key before 500ms ends, Kanata will backspace that alpha character and output a new character. This can be used to type non-ASCII characters such as ↑↓ or ḓìàċṙïtíčș.

### Outro
That's all there is to it! Three very accessible layers that cover all ASCII characters, and bonuses elsewhere. Those three layers is where most of the design (and benefit) were poured, but Ultra, Mirroring, and Special Character Typing are nice bonuses that still don't interfere with any regular keyboard activities. Hope you found some ideas you liked! There is an extended version of this readme within `kanata.kbd` that covers more of the "why" for many of the decisions that were made.