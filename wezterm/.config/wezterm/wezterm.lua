local wezterm = require("wezterm")

-- local config = {
--     font = wezterm.font("JetBrains Mono"),
--     font_size = 18.0,
--     color_scheme = "Gruvbox Dark",
--     window_background_opacity = 0.9,
--     enable_tab_bar = false,
-- }
local config = wezterm.config_builder()

-- config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.font_size = 18.0
config.window_background_opacity = 0.9

-- config.colors
config.color_scheme = "Gruvbox Dark"
config.colors = {
    cursor_bg = "white",
    cursor_border = "white",
}

-- Appearance
-- Acceptable values are SteadyBlock, BlinkingBlock, SteadyUnderline, BlinkingUnderline, SteadyBar, and BlinkingBar.
config.default_cursor_style = "SteadyBlock"
config.enable_tab_bar = false
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.max_fps = 90
-- config.prefer_egib = true

-- remaps
-- couldn't get c-f to work
config.keys = {
    {
        key = "f",
        mods = "CTRL",
        action = wezterm.action.SendString('~/.local/bin/tmux-sessionizer.sh\n'),
    },
}
-- { key = "f", mods = "CTRL|SHIFT", action = wezterm.action.ToggleFullScreen },
-- { key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
-- { key = "w", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
-- }
return config
