-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = true,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme = "OneDark (base16)",
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Bold", stretch = "Normal", style = "Normal" }),
	font_size = 11,
	front_end = "WebGpu",
	background = {
		{
			source = {
				File = "C:\\Users\\Parth\\Pictures\\DesktopWallpaper\\cha-hae.png",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.40,
			},
		},
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.55,
		},
	},
}

return config
