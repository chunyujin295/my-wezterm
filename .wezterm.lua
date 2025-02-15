-- local wezterm = require 'wezterm'
-- local c = {}
-- if wezterm.config_builder then
--   c = wezterm.config_builder()
-- end

-- -- 初始大小
-- c.initial_cols = 96
-- c.initial_rows = 24

-- -- 关闭时不进行确认
-- c.window_close_confirmation = 'NeverPrompt'

-- -- 字体
-- c.font = wezterm.font 'JetBrainsMono NF Light'

-- -- 配色
-- local materia = wezterm.color.get_builtin_schemes()['Material Darker (base16)']
-- materia.scrollbar_thumb = '#cccccc' -- 更明显的滚动条
-- c.colors = materia

-- -- 透明背景
-- c.window_background_opacity = 0.5
-- -- 取消 Windows 原生标题栏
-- c.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- -- 滚动条尺寸为 15 ，其他方向不需要 pad
-- c.window_padding = { left = 0, right = 15, top = 0, bottom = 0 }
-- -- 启用滚动条
-- c.enable_scroll_bar = true

-- -- Change the default shell when open
-- -- config.set_environment_variables = {
-- --   -- default launching program
-- --   COMSPEC = 'C:/Program Files/PowerShell/7/pwsh.exe',
-- --   -- COMSPEC = 'C:\\Program Files\\nu\\bin\\nu.exe',
-- --   -- OMSPEC = 'D:\\Apps\\Git\\bin\\bash.exe'
-- -- }

-- -- 默认启动项
-- -- c.default_prog = { 'C:/Program Files/PowerShell/7/pwsh.exe', 'zsh' }
-- c.default_prog = { 'powershell.exe', 'zsh' }

-- -- 启动菜单的一些启动项
-- -- c.launch_menu = {
-- --   -- { label = 'MINGW64 / MSYS2', args = { 'C:/msys64/msys2_shell.cmd', '-defterm', '-here', '-no-start', '-shell', 'zsh', '-mingw64' }, },
-- --   -- { label = 'MSYS / MSYS2',    args = { 'C:/msys64/msys2_shell.cmd', '-defterm', '-here', '-no-start', '-shell', 'zsh', '-msys' }, },
-- --   { label = 'PowerShell5',      args = { 'C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe"' }, },
-- --   -- { label = 'CMD',             args = { 'cmd.exe' }, },
-- --   -- { label = 'nas / ssh',       args = { 'C:/msys64/usr/bin/ssh.exe', 'nas' }, },
-- -- }

-- -- 取消所有默认的热键
-- c.disable_default_key_bindings = true
-- local act = wezterm.action
-- c.keys = {
--   -- Ctrl+Shift+Tab 遍历 tab
--   { key = 'Tab', mods = 'SHIFT|CTRL', action = act.ActivateTabRelative(1) },
--   -- F11 切换全屏
--   { key = 'F11', mods = 'NONE', action = act.ToggleFullScreen },
--   -- Ctrl+Shift++ 字体增大
--   { key = '+', mods = 'SHIFT|CTRL', action = act.IncreaseFontSize },
--   -- Ctrl+Shift+- 字体减小
--   { key = '_', mods = 'SHIFT|CTRL', action = act.DecreaseFontSize },
--   -- Ctrl+Shift+C 复制选中区域
--   { key = 'C', mods = 'SHIFT|CTRL', action = act.CopyTo 'Clipboard' },
--   -- Ctrl+Shift+N 新窗口
--   { key = 'N', mods = 'SHIFT|CTRL', action = act.SpawnWindow },
--   -- Ctrl+Shift+T 新 tab
--   { key = 'T', mods = 'SHIFT|CTRL', action = act.ShowLauncher },
--   -- Ctrl+Shift+Enter 显示启动菜单
--   { key = 'Enter', mods = 'SHIFT|CTRL', action = act.ShowLauncherArgs { flags = 'FUZZY|TABS|LAUNCH_MENU_ITEMS' } },
--   -- Ctrl+Shift+V 粘贴剪切板的内容
--   { key = 'V', mods = 'SHIFT|CTRL', action = act.PasteFrom 'Clipboard' },
--   -- Ctrl+Shift+W 关闭 tab 且不进行确认
--   { key = 'W', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab{ confirm = false } },
--   -- Ctrl+Shift+PageUp 向上滚动一页
--   { key = 'PageUp', mods = 'SHIFT|CTRL', action = act.ScrollByPage(-1) },
--   -- Ctrl+Shift+PageDown 向下滚动一页
--   { key = 'PageDown', mods = 'SHIFT|CTRL', action = act.ScrollByPage(1) },
--   -- Ctrl+Shift+UpArrow 向上滚动一行
--   { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ScrollByLine(-1) },
--   -- Ctrl+Shift+DownArrow 向下滚动一行
--   { key = 'DownArrow', mods = 'SHIFT|CTRL', action = act.ScrollByLine(1) },
-- }

-- return c

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

	window_decorations = "INTEGRATED_BUTTONS|RESIZE",

	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.8,
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
