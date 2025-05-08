local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.enable_wayland = false
config.font = wezterm.font("JetBrainsMono Nerd Font", { style = 'Normal' })
config.font_size = 16

config.window_close_confirmation = "NeverPrompt"

config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.7

return config
