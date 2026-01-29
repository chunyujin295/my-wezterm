-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {
	-- wezterm.config_builder()

	-- This is where you actually apply your config choices

	-- -- 字体
	font = wezterm.font("Maple Mono NF CN", { weight = "Medium" }),

	-- 配色方案
	-- Wezterm支持真彩色，注释掉配色方案则使用默认方案
	-- https://wezterm.org/colorschemes/index.html
	-- color_scheme = "Catppuccin Mocha",
	-- color_scheme = 'Adventure Time (Gogh)',
	-- color_scheme = 'VisiBlue (terminal.sexy)',
	-- color_scheme = 'Sakura',
	-- color_scheme = 'shades-of-purple',
	color_scheme = 'Shades of Purple (base16)',

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
	-- default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe -NoLogo" },
	-- default_prog = {"D:/software/Git/git-bash.exe"}
	-- default_prog = {"C:/Users/Thinkpad/AppData/Local/Programs/nu/bin/nu.exe"}
	default_prog = {"nu"}
}
-- and finally, return the configuration to wezterm
return config
