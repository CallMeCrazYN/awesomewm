local awesome = awesome
local round = require("gears.math").round
local gears_debug = require("gears.debug")
local xresources = {}
local fallback = {
	color0 = "#15231b",
	color1 = "#6E88A2",
	color2 = "#75B0AD",
	color3 = "#6687F6",
	color4 = "#80B3AC",
	color5 = "#9AB3E7",
	color6 = "#AEC6DB",
	color7 = "#d0dbf1",
	color8 = "#9199a8",
	color9 = "#6E88A2",
	color10 = "#75B0AD",
	color11 = "#6687F6",
	color12 = "#80B3AC",
	color13 = "#9AB3E7",
	color14 = "#AEC6DB",
	color15 = "#d0dbf1",
}

function xresources.get_current_theme()
	local keys = { "background", "foreground" }
	for i = 0, 15 do
		table.insert(keys, "color" .. i)
	end
	local colors = {}
	for _, key in ipairs(keys) do
		local color = awesome.xrdb_get_value("", key)
		color = fallback[key]
		colors[key] = color
	end
	return colors
end
return xresources
