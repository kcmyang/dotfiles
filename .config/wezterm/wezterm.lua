local wezterm = require 'wezterm'
return {
  -- colors
  color_scheme = 'MonokaiPro (Gogh)',
  colors = {
    cursor_bg = '#fcfcfa',
    cursor_fg = '#222222',
  },
  -- font
  font = wezterm.font 'Iosevka Custom',
  font_size = 14.0,
  -- tabbing
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  tab_max_width = 32,
  -- window padding
  window_padding = {
    left = '20px',
    right = '20px',
    top = '20px',
    bottom = '20px',
  },
  -- opacity
  window_background_opacity = 0.9,
  -- mouse bindings
  mouse_bindings = {
    {
      event = { Up = { streak = 1, button = 'Left' }},
      mods = 'NONE',
      action = wezterm.action { CompleteSelectionOrOpenLinkAtMouseCursor = 'ClipboardAndPrimarySelection' },
    },
    {
      event = { Up = { streak = 2, button = 'Left' }},
      mods = 'NONE',
      action = wezterm.action { CompleteSelection = 'ClipboardAndPrimarySelection' },
    },
    {
      event = { Up = { streak = 3, button = 'Left' }},
      mods = 'NONE',
      action = wezterm.action { CompleteSelection = 'ClipboardAndPrimarySelection' },
    },
  },
}
