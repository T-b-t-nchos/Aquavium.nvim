## 📷️ スクリーンショットの設定について - About config of screenshots

<sub>As there was a question regarding Issue #33, I am publishing this for reference.</sub>  
Issue #33 にて質問があったため、参考用に公開します。  

> [!IMPORTANT]
> <sub>Some settings may use a different syntax from the ones shown in the screenshots.</sub>  
> 一部の設定は、スクリーンショットに表示されているものと構文が異なる場合があります。  
> <sub>The appearance is identical.</sub>  
> 外観は全く同じです。 

### README.md
#### Black
##### WezTerm
```lua
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local IS_WINDOWS = wezterm.target_triple:find('windows', 1, true) ~= nil

local WEZTERM_WEBGPU_PWR_PREF = os.getenv("WEZTERM_WEBGPU_PWR_PREF")    -- H or L
local WEZTERM_OPENGL = os.getenv("WEZTERM_OPENGL") == "1"               -- true or false

local opacity_state = 0.7


-- Appeerance Setting ----------------------------------------------------
config.automatically_reload_config = true

config.initial_cols = 144
config.initial_rows = 32

local front_end = "WebGpu"

local pwr = "HighPerformance"
local pwrpref = WEZTERM_WEBGPU_PWR_PREF
if pwrpref == "H" then
    pwr = "HighPerformance"
elseif pwrpref == "L" then
    pwr = "LowPower"
end
config.webgpu_power_preference = pwr

if WEZTERM_OPENGL then
    front_end = "OpenGL"
end

config.front_end = front_end
config.window_background_opacity = opacity_state

if IS_WINDOWS then
    config.window_decorations = 'INTEGRATED_BUTTONS'
else
    config.window_decorations = 'NONE'
    config.enable_wayland = false
end


config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 480
config.animation_fps = 120


config.window_background_gradient =
{colors = {'#000000'}}

config.window_frame = {
    inactive_titlebar_bg = 'none',
    active_titlebar_bg = 'none'
}
config.color_scheme = 'Aquatermium'
config.color_scheme_dirs = {
    "./colors",
}

config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.colors = {tab_bar = {inactive_tab_edge = 'none'}}
config.window_frame = {
    font_size = 9,
    active_titlebar_bg = 'none',
    inactive_titlebar_bg = 'none',
}


-- Font Setting ----------------------------------------------------------
config.font_size = 10.0
config.font = wezterm.font('Moralerspace Radon HW')


-- Tab Setting -----------------------------------------------------------
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle
wezterm.on('format-tab-title', function(tab, _, _, _, _, max_width)
    local background = '#303030'
    local foreground = '#aaaaaa'
    local edge_background = 'none'
    if tab.is_active then
        background = '#1b1b1b'
        foreground = '#FFFFFF'
    end
    local edge_foreground = background
    local title = '   ' .. wezterm.truncate_right(tab.active_pane.title,max_width - 1) .. '   '
    return {
        {Background = {Color = edge_background}},
        {Foreground = {Color = edge_foreground}}, {Text = SOLID_LEFT_ARROW},
        {Background = {Color = background}},
        {Foreground = {Color = foreground}}, {Text = title},
        {Background = {Color = edge_background}},
        {Foreground = {Color = edge_foreground}}, {Text = SOLID_RIGHT_ARROW}
    }
end)


return config
```

##### Aquavium
(Default)

#### Blue
##### WezTerm
```lua
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local IS_WINDOWS = wezterm.target_triple:find('windows', 1, true) ~= nil

local WEZTERM_WEBGPU_PWR_PREF = os.getenv("WEZTERM_WEBGPU_PWR_PREF")    -- H or L
local WEZTERM_OPENGL = os.getenv("WEZTERM_OPENGL") == "1"               -- true or false

local opacity_state = 0.7


-- Appeerance Setting ----------------------------------------------------
config.automatically_reload_config = true

config.initial_cols = 144
config.initial_rows = 32

local front_end = "WebGpu"

local pwr = "HighPerformance"
local pwrpref = WEZTERM_WEBGPU_PWR_PREF
if pwrpref == "H" then
    pwr = "HighPerformance"
elseif pwrpref == "L" then
    pwr = "LowPower"
end
config.webgpu_power_preference = pwr

if WEZTERM_OPENGL then
    front_end = "OpenGL"
end

config.front_end = front_end
config.window_background_opacity = opacity_state

if IS_WINDOWS then
    config.window_decorations = 'INTEGRATED_BUTTONS'
else
    config.window_decorations = 'NONE'
    config.enable_wayland = false
end


config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 480
config.animation_fps = 120


config.window_background_gradient =
{colors = {'#02083a'}}

config.window_frame = {
    inactive_titlebar_bg = 'none',
    active_titlebar_bg = 'none'
}
config.color_scheme = 'Aquatermium'
config.color_scheme_dirs = {
    "./colors",
}

config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.colors = {tab_bar = {inactive_tab_edge = 'none'}}
config.window_frame = {
    font_size = 9,
    active_titlebar_bg = 'none',
    inactive_titlebar_bg = 'none',
}


-- Font Setting ----------------------------------------------------------
config.font_size = 10.0
config.font = wezterm.font('Moralerspace Radon HW')


-- Tab Setting -----------------------------------------------------------
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle
wezterm.on('format-tab-title', function(tab, _, _, _, _, max_width)
    local background = '#303030'
    local foreground = '#aaaaaa'
    local edge_background = 'none'
    if tab.is_active then
        background = '#1b1b1b'
        foreground = '#FFFFFF'
    end
    local edge_foreground = background
    local title = '   ' .. wezterm.truncate_right(tab.active_pane.title,max_width - 1) .. '   '
    return {
        {Background = {Color = edge_background}},
        {Foreground = {Color = edge_foreground}}, {Text = SOLID_LEFT_ARROW},
        {Background = {Color = background}},
        {Foreground = {Color = foreground}}, {Text = title},
        {Background = {Color = edge_background}},
        {Foreground = {Color = edge_foreground}}, {Text = SOLID_RIGHT_ARROW}
    }
end)


return config
```

##### Aquavium
(Default)

### extras/wezterm/README.md
##### WezTerm
```lua
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local IS_WINDOWS = wezterm.target_triple:find('windows', 1, true) ~= nil

local WEZTERM_WEBGPU_PWR_PREF = os.getenv("WEZTERM_WEBGPU_PWR_PREF")    -- H or L
local WEZTERM_OPENGL = os.getenv("WEZTERM_OPENGL") == "1"               -- true or false

local opacity_state = 0.7


-- Appeerance Setting ----------------------------------------------------
config.automatically_reload_config = true

config.initial_cols = 144
config.initial_rows = 32

local front_end = "WebGpu"

local pwr = "HighPerformance"
local pwrpref = WEZTERM_WEBGPU_PWR_PREF
if pwrpref == "H" then
    pwr = "HighPerformance"
elseif pwrpref == "L" then
    pwr = "LowPower"
end
config.webgpu_power_preference = pwr

if WEZTERM_OPENGL then
    front_end = "OpenGL"
end

config.front_end = front_end
config.window_background_opacity = opacity_state

if IS_WINDOWS then
    config.window_decorations = 'INTEGRATED_BUTTONS'
else
    config.window_decorations = 'NONE'
    config.enable_wayland = false
end


config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 480
config.animation_fps = 120


config.window_background_gradient =
{colors = {'#000e1e'}}

config.window_frame = {
    inactive_titlebar_bg = 'none',
    active_titlebar_bg = 'none'
}
config.color_scheme = 'Aquatermium'
config.color_scheme_dirs = {
    "./colors",
}

config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.colors = {tab_bar = {inactive_tab_edge = 'none'}}
config.window_frame = {
    font_size = 9,
    active_titlebar_bg = 'none',
    inactive_titlebar_bg = 'none',
}


-- Font Setting ----------------------------------------------------------
config.font_size = 10.0
config.font = wezterm.font('Moralerspace Radon HW')


-- Tab Setting -----------------------------------------------------------
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle
wezterm.on('format-tab-title', function(tab, _, _, _, _, max_width)
    local background = '#303030'
    local foreground = '#aaaaaa'
    local edge_background = 'none'
    if tab.is_active then
        background = '#1b1b1b'
        foreground = '#FFFFFF'
    end
    local edge_foreground = background
    local title = '   ' .. wezterm.truncate_right(tab.active_pane.title,max_width - 1) .. '   '
    return {
        {Background = {Color = edge_background}},
        {Foreground = {Color = edge_foreground}}, {Text = SOLID_LEFT_ARROW},
        {Background = {Color = background}},
        {Foreground = {Color = foreground}}, {Text = title},
        {Background = {Color = edge_background}},
        {Foreground = {Color = edge_foreground}}, {Text = SOLID_RIGHT_ARROW}
    }
end)


return config
```

##### Aquavium
(Default)

### extras/oh-my-posh/README.md
##### WezTerm
(Same as /README.md)

##### Powershell
```ps1
$ohMyPoshTheme = Join-Path $HOME ".config\ohmyposh\theme\Aquaposh.omp.json"
$ohMyPoshCache = Join-Path $HOME ".cache\oh-my-posh\init.ps1"

oh-my-posh init pwsh --config $ohMyPoshTheme | Set-Content -LiteralPath $ohMyPoshCache -Encoding utf8
```
