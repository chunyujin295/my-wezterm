local wezterm = require("wezterm")

local config = {}

-- 字体
config.font = wezterm.font("Maple Mono NF CN", {
	weight = "Medium",
})
config.font_size = 13.5

-- 配色方案
-- Wezterm支持真彩色，注释掉配色方案则使用默认方案
-- https://wezterm.org/colorschemes/index.html
-- color_scheme = "Catppuccin Mocha",
-- color_scheme = 'Adventure Time (Gogh)',
-- color_scheme = 'VisiBlue (terminal.sexy)',
-- color_scheme = 'Sakura',
-- color_scheme = 'shades-of-purple',
config.color_scheme = "Shades of Purple (base16)"

-- 完全无边框
-- config.window_decorations = "NONE"
config.window_decorations = "RESIZE"

-- 透明 + 模糊
config.window_background_opacity = 0.88
config.text_background_opacity = 0.95
-- config.macos_window_background_blur = 80

-- Tab Bar 极简
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false

-- config.win32_system_backdrop = "Mica"

-- 内边距（视觉呼吸感）
config.window_padding = {
	left = 18,
	right = 18,
	top = 16,
	bottom = 12,
}

-- 不随字体缩放窗口
config.adjust_window_size_when_changing_font_size = false

-- 光标
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
-- config.cursor_blink_rate = 500

-- 滚动缓冲
config.scrollback_lines = 8000

-- 性能
config.front_end = "WebGpu"
config.enable_wayland = false

-- 默认 shell（Nu）
config.default_prog = {
	"nu"
}
-- config.default_prog = { "C:/Program Files/PowerShell/7/pwsh.exe -NoLogo" },
-- config.default_prog = {"D:/software/Git/git-bash.exe"}
-- config.default_prog = {"C:/Users/Thinkpad/AppData/Local/Programs/nu/bin/nu.exe"}

-- 关闭提示音
config.audible_bell = "Disabled"

-- 关闭关闭确认
config.window_close_confirmation = "NeverPrompt"


local act = wezterm.action

config.mouse_bindings = {
	-- Alt + 拖动：移动窗口（无边框必备）
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "ALT",
		action = act.StartWindowDrag,
	},
}



-- 快捷键
config.keys = {
	-- 新建 Tab
	{
		key = "t",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},

	-- 关闭 Tab 默认 ctrl + d 或者 ctrl + shift + w

	-- 横向分屏（上下分）：Ctrl + Alt + -
	{
		key = "-",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),

	},

	-- 竖向分屏（左右分）：Ctrl + Alt + \
	{
		key = "\\",
		mods = "CTRL|ALT",

		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},



	-- Pane 切换（Vim 方向）
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},

	-- Ctrl + Alt + [  → 缩小窗体（向左收缩）
	{
		key = "[",
		mods = "CTRL|ALT",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},

	-- Ctrl + Alt + ]  → 放大窗体（向右扩展）
	{
		key = "]",
		mods = "CTRL|ALT",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},

}

return config
