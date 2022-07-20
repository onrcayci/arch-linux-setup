local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")

local variables = require("variables")

local function create_wibar()
	awful.screen.connect_for_each_screen(function(s)
		-- Wallpaper
		variables.set_wallpaper(s)
		-- Each screen has its own tag table
		awful.tag({ "1", "2", "3", "4" }, s, awful.layout.layouts[1])
		-- Create a promptbox for each screen
		s.mypromptbox = awful.widget.prompt({
			prompt = "Execute: ",
		})
		-- Create an imagebox widget which will contain an icon indicating which layout we're using.
		-- We need one layoutbox per screen.
		s.mylayoutbox = awful.widget.layoutbox(s)
		s.mylayoutbox:buttons(gears.table.join(
			awful.button({}, 1, function()
				awful.layout.inc(1)
			end),
			awful.button({}, 3, function()
				awful.layout.inc(-1)
			end),
			awful.button({}, 4, function()
				awful.layout.inc(1)
			end),
			awful.button({}, 5, function()
				awful.layout.inc(-1)
			end)
		))
		-- Create a taglist widget
		s.mytaglist = awful.widget.taglist({
			screen = s,
			filter = awful.widget.taglist.filter.all,
			buttons = variables.taglist_buttons,
		})
		-- Create a tasklist widget
		s.mytasklist = awful.widget.tasklist({
			screen = s,
			filter = awful.widget.tasklist.filter.currenttags,
			buttons = variables.tasklist_buttons,
		})
		-- Create the wibox
		s.mywibox = awful.wibar({ position = "top", screen = s })
		-- Add widgets to the wibox
		s.mywibox:setup({
			layout = wibox.layout.align.horizontal,
			{
				layout = wibox.layout.align.horizontal,
				s.mylayoutbox,
				s.mytaglist,
				s.mypromptbox,
			},
			s.mytasklist,
			{
				layout = wibox.layout.align.horizontal,
				variables.kblayout,
				variables.clock,
			},
		})
	end)
end

return create_wibar
