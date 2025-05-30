-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Set the font size to 12 points
config.font_size = 10.0

-- Display the tab bar only when more than one tab is open
config.hide_tab_bar_if_only_one_tab = true

-- For example, changing the color scheme:
config.color_scheme = "nord"

config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 20,
}

config.font = wezterm.font_with_fallback({
	"Fira Code Nerd Font",
	"Nerd Font Symbols",
})

-- and finally, return the configuration to wezterm
return config
