-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.color_scheme = "catppuccin-mocha"

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.max_fps = 165

config.keys = {
  {
    key = "d",
    mods = "SUPER|SHIFT",
    action = wezterm.action.SplitVertical({
      domain = "CurrentPaneDomain",
    }),
  },
  {
    key = "d",
    mods = "SUPER",
    action = wezterm.action.SplitHorizontal({
      domain = "CurrentPaneDomain",
    }),
  },
  {
    key = "w",
    mods = "SUPER",
    action = wezterm.action.CloseCurrentPane({
      confirm = true,
    }),
  },
  {
    key = "LeftArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Left")
  },
  {
    key = "RightArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Right")
  },
  {
    key = "UpArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Up")
  },
  {
    key = "DownArrow",
    mods = "ALT",
    action = wezterm.action.ActivatePaneDirection("Down")
  },
  {
    key = "+",
    mods = "CTRL",
    action = wezterm.action.IncreaseFontSize,
  },
  {
    key = "-",
    mods = "CTRL",
    action = wezterm.action.DecreaseFontSize,
  },
  {
    key = "0",
    mods = "CTRL",
    action = wezterm.action.ResetFontSize,
  }
}

config.window_padding = {
  left = 0,
  right = 0,
  top = "8px",
  bottom = "8px",
}

-- and finally, return the configuration to wezterm
return config
