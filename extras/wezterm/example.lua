local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme_dirs = {
    "./path/to/colors",
}

config.color_scheme = "Aquatermium"

return config
