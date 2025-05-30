local wezterm = require 'wezterm'
local config = {}

config.enable_kitty_graphics = true;
config.enable_tab_bar = false;

config.warn_about_missing_glyphs=false

config.colors = {
	-- The default text color
 	foreground = '#d8dee9',
  	-- The default background color
  	background = '#2e3440',

	-- Overrides the cell background color when the current cell is occupied by the
 	-- cursor and the cursor style is set to Block
  	cursor_bg = '#d8dee9',
  	-- Overrides the text color when the current cell is occupied by the cursor
  	cursor_fg = '#2e3440',

  	-- the background color of selected text
  	selection_bg = '#4c566a',

	ansi = {
    		'#3b4252',
    		'#bf616a',
    		'#a3be8c',
    		'#ebcb8b',
    		'#81a1c1',
    		'#b48ead',
    		'#88c0d0',
    		'#e5e9f0',
  	},
  	brights = {
    		'#4c566a',
    		'#bf616a',
    		'#a3be8c',
    		'#ebcb8b',
    		'#81a1c1',
    		'#b48ead',
    		'#8fbcbb',
    		'#eceff4',
  },
}

config.font = wezterm.font_with_fallback({
	'FiraCode Nerd Font',
})
config.font_size = 10

config.window_padding = {
	left = 16,
	right = 16,
	top = 16,
	bottom = 16,
}

config.window_decorations = "NONE"

return config
