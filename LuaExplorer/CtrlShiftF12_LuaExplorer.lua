Macro {
  description = "Lua Explorer";
  area = "Common";
  key = "CtrlShiftF12";
  action = function()
      local luaExplorer = require("LuaExplorer")
      luaExplorer.explore()
     end
}
