local wezterm = require("wezterm")
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = true,
	use_fancy_tab_bar = true,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme = "OneDark (base16)",
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Bold" }),
	font_size = 11,
	front_end = "WebGpu",
	default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" },
	background = {
		{
			source = { File = "C:\\Users\\Parth\\Pictures\\DesktopWallpaper\\cha-hae.png" },
			hsb = { hue = 1.0, saturation = 1.02, brightness = 0.40 },
		},
		{
			source = { Color = "#282c35" },
			width = "100%",
			height = "100%",
			opacity = 0.55,
		},
	},
	keys = {
		{
			key = "c",
			mods = "CTRL",
			action = wezterm.action_callback(function(window, pane)
				local has_selection = window:get_selection_text_for_pane(pane) ~= ""
				if has_selection then
					window:perform_action(wezterm.action.CopyTo("Clipboard"), pane)
					window:clear_selection()
				else
					window:perform_action(wezterm.action.SendKey({ key = "c", mods = "CTRL" }), pane)
				end
			end),
		},
		{
			key = "v",
			mods = "CTRL",
			action = wezterm.action.PasteFrom("Clipboard"),
		},
	},
}

return config
