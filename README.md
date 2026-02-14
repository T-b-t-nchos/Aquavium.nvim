<div align="center">
    <h1>🪼 Aquavium.nvim 🦈</h1>
    <sub>Aquarium color scheme on Neovim</sub>
</div>

## ✨ 概要 - Overview -
<sub>"Aquavium" is designed for use with a transparent terminal background</sub>  
"Aquavium"はターミナルの背景を透過させることを前提とした、  
<sub>and features an aquarium-themed color scheme</sub>    
水族館をモチーフにしたカラーテーマです。  

## 📷️ プレビュー - Preview -

|   |dark|light|
|---|---|---|
|black|![win11,black,70per,dark](img/2-win11-black-70per-dark.png)|![win11,black,70per,light](img/2-win11-black-70per-light.png)|
|blue|![win11,blue,70per,dark](img/2-win11-blue-70per-dark.png)|![win11,blue,70per,light](img/2-win11-blue-70per-light.png)|

## 💼 依存関係 - dependents -
- [Neovim](https://github.com/neovim/neovim) 0.11+
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (Optional)

## 🧩 対応しているプラグイン - supported plugins -
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [Markview.nvim](https://github.com/OXY2DEV/markview.nvim)

## 🔧 インストール - Install -
### In terminal
<sub>Please set opacity</sub>  
透明度を設定してください。  
  
例(example):
```lua
---- WezTerm Nightly
-- Set background color
config.window_background_gradient = {colors = {'#000000'}} -- or other color

-- Set opacity
config.window_background_opacity = 0.7

--config.window_background_opacity = opacity_state
--config.window_decorations = 'INTEGRATED_BUTTONS'
```
### In Neovim
#### Lazy.nvim
```lua
    {
        "https://github.com/T-b-t-nchos/Aquavium.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local aquavium = require("Aquavium")

            aquavium.setup({
                -- options

                ---- For example,
                -- bold = false,
                -- italic = false,
                -- transparent = false,
            })

            vim.cmd("colorscheme Aquavium")
        end,
    },
```

## 💡 インスピレーション元 - source of inspire -

<sub>This color theme is inspired from [The Aquarium does not dance](https://daidai7742.wixsite.com/aqua-dance).</sub>  
本カラーテーマは[アクアリウムは踊らない](https://daidai7742.wixsite.com/aqua-dance)より、インスピレーションを受けました。  
<sub>(2026/02/15) Happy 2nd Anniversary!</sub>  
(2026/02/15) 二周年、おめでとうございます!
  
> [!WARNING]
> This work is a fan creation and has no affiliation with the official creators.  
> 本作品は、公式様とは一切の関わりを持たない、ファンによる作品です。  

