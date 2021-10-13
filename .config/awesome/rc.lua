-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

require("awful.autofocus")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- Import error handling module
require("errors")
-- Import menu module
require("menu")
-- Import wibar module
require("wibar")
-- Import mouse bindings module
require("mouse")
-- Import global key bindings module
require("globalkeys")
-- Import rules module
require("rules")
-- Import signals module
require("signals")
