# Lua Explorer

A [Lua][] module based on [Lua Explorer "Advanced"][] by John Doe, itself based on [Lua Explorer][] by Eugen Gez.
It allows you to explore the Lua environment within [FAR Manager][].

## Installation

1. Move/copy the file LuaExplorer.lua to %FARPROFILE%\Macros\modules
1. Create a macro to load the module and run the `explore()` method. An example macro is in `CtrlShiftF12_LuaExplorer.lua`.
1. Reload macros in FAR Manager

## Usage

### From a FAR Manager macro

In FAR Manager, press the hotkey that you assigned to the macro. A dialog should appear similar to the following:

<pre>
    +----------------------------- _G  (82) ------------------------------+
    |▶ APanel                        |table    |table: 0x28032200         |
    |▶ Area                          |table    |table: 0x280321b0         |
    |▶ BM                            |table    |table: 0x280319e8         |
    |▶ CmdLine                       |table    |table: 0x28032450         |
    |▶ Dlg                           |table    |table: 0x28030998         |
    |▶ Drv                           |table    |table: 0x27fc1ab0         |
    |▶ Editor                        |table    |table: 0x28030c10         |
    |▶ Far                           |table    |table: 0x28031520         |
    |▶ Help                          |table    |table: 0x27fc1bc8         |
    |▶ Menu                          |table    |table: 0x280311d0         |
    |▶ Mouse                         |table    |table: 0x27fc1ce0         |
    |▶ Object                        |table    |table: 0x2802b558         |
    |▶ PPanel                        |table    |table: 0x28032328         |
    |▶ Panel                         |table    |table: 0x28031fe0         |
    |▶ Plugin                        |table    |table: 0x28031dd0         |
    |▶ Viewer                        |table    |table: 0x27fc1df8         |
    |▶ _G                            |table    |table: 0x27fc1960         |
    |▶ bit                           |table    |table: 0x27fcabd8         |
    |▶ bit64                         |table    |table: 0x27fc72d0         |
    |▶ coroutine                     |table    |table: 0x27fc3708         |
    |▶ debug                         |table    |table: 0x27fc6b00         |
    |▶ editor                        |table    |table: 0x27fed330         |
    |▶ export                        |table    |table: 0x27fce120         |
    |▶ far                           |table    |table: 0x27fd2360         |
    |▶ io                            |table    |table: 0x27fc4d20         |
    |▶ jit                           |table    |table: 0x27fcd768         |
    |▶ lpeg                          |table    |table: 0x2808c9f0         |
    |▶ math                          |table    |table: 0x27fc5f20         |
    |▶ mf                            |table    |table: 0x2802e4f0         |
    |▶ os                            |table    |table: 0x27fc5390         |
    |▶ package                       |table    |table: 0x27fc3aa0         |
    |▶ panel                         |table    |table: 0x27ff1dd8         |
    +---------------------- F1, F3, F4, Del, Ctrl+M ----------------------+
</pre>

* The top of the dialog shows the current location within the environment and the number of entries in this location surrounded by parentheses.
* The middle of the dialog shows the entries in the current location within the environment. The lines have three columns:
  1. A symbol followed by the name of the entry. Symbols used are:
     * ▶ - table
     * λ - function
     * ? - boolean
     * \# - number
     * $ - string
     * ø - nil
  2. The Lua data type for the entry.
  3. Either the contents of the entry or, if it is a table or userdata, the type followed by its address in hexadecimal format.
* The bottom of the dialog shows some of the keys available in the dialog. The full list of keys are as follows:
  * For all items except functions:
    * Enter - For a table, make it the current location and display its items
              For a function, prompt for any parameter values, call the function and display any return values
              For anything else, display the full value within a pop-up dialog
    * Esc - Go back to the previous location or exit the dialog if at the top of the environment (_G)
    * F1 - Show a help dialog
    * F4 - Edit selected object
    * F9 - Show registry
    * Del - Delete selected object
    * Ins - Add an object to current table
    * Ctrl+G - Show global environment
    * Ctrl+M - Show metatable, if one exists
    * Ctrl+F - Show/hide functions
    * Ctrl+T - Toggle sort by type/name
               When sorted by type, tables are shown first before everything else
    * Ctrl+[0-9] - Show locals at that level
  * For functions only:
    * F3 - Show some function info
    * Shift+F3 - Show some function info (LuaJIT required)
    * Alt+F4 - Open function definition (if available) in editor
    * Ctrl+Up - Show upvalues (editable)
    * Ctrl+Down - Show the function's environment, if different from \_G (editable)
                  Otherise, show \_G, after confirmation
    * Ctrl+Right - Show parameters
  * Copying to Clipboard:
    * Ctrl+Ins - value
    * Ctrl+Shift+Ins - key

### From LuaFAR for Editor or UM Adapter

Lua Explorer can also be used from either the [LuaFAR for Editor][] or [UM Adapter][] plugin.
Two files are available as samples describing how to do this:

* LFE_LuaExplorer.lua - an example LuaFAR for Editor/UM Adapter script that loads the LuaExplorer module and runs the `explore()` method
* \_usermenu.lua - an example LuaFAR for Editor/UM Adapter menu script for executing the above script

Since LuaFAR for Editor has its own Lua environment, that is the one you will see in Lua Explorer.
UM Adapter runs in the same environment as FAR itself (or more accurately, the LuaMacro plugin).

[Lua]: http://www.lua.org
[Lua Explorer "Advanced"]: http://forum.farmanager.com/viewtopic.php?f=60&t=7988
[Lua Explorer]: http://forum.farmanager.com/viewtopic.php?f=15&t=7521
[FAR Manager]: http://www.farmanager.com
[LuaFAR for Editor]: https://github.com/shmuz/far_plugins
[UM Adapter]: http://raidar.github.io/Programs/FarScripts.htm#UM_Adapter
