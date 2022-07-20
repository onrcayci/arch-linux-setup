local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")

local variables = require("variables")

local awesomemenu = {
	{
		"Hotkeys",
		function()
			hotkeys_popup.show_help(nil, awful.screen.focused())
		end,
	},
	{ "Manual", variables.terminal .. " -e man awesome" },
	{ "Edit config", variables.editor_cmd .. " " .. awesome.conffile },
	{ "Restart", awesome.restart },
	{
		"Quit",
		function()
			awesome.quit()
		end,
	},
}

local menu = awful.menu({
	items = { { "Awesome", awesomemenu }, { "Terminal", variables.terminal }, { "Firefox", "firefox" } },
})

return menu
