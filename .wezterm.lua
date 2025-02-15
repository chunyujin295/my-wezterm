-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {
	-- wezterm.config_builder()

	-- This is where you actually apply your config choices

	-- -- 字体
	font = wezterm.font("JetBrainsMono NF Light", { weight = "Regular" }),

	-- For example, changing the color scheme:
	color_scheme = "Catppuccin Mocha",

	use_fancy_tab_bar = false,

	hide_tab_bar_if_only_one_tab = true,

	-- window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	-- window_decorations = "RESIZE",

	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.85,
	macos_window_background_blur = 70,
	-- windows_window_background_blur = 70,
	text_background_opacity = 0.9,
	adjust_window_size_when_changing_font_size = false,
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},
	-- Spawn a powershell
	default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe -NoLogo" },
}
-- and finally, return the configuration to wezterm
return config
