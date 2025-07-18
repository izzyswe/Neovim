-- return {
--   {
--     "askfiy/visual_studio_code",
--     priority = 100,
--     config = function()
--         vim.cmd([[colorscheme visual_studio_code]])
--     end,
--   },
-- }

-- return {
--   {
--     "dgox16/oldworld.nvim",
--     lazy = false,  -- Load the theme immediately
--     priority = 1000,  -- Ensure it loads first
--     config = function()
--       -- Apply the OldWorld theme
--       vim.cmd.colorscheme("oldworld")
--     end,
--   }
-- }

-- return {
--   -- Lazy
--   {
--     "vague2k/vague.nvim",
--     config = function()
--       require("vague").setup({
--         -- optional configuration here
--         vim.cmd.colorscheme("vague")
--       })
--     end
--   },
-- }

-- return {
--   {
--     "astronvim/astrotheme",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("astrotheme").setup({
--         palette = "astromars", -- String of the default palette to use when calling `:colorscheme astrotheme`
--         style = {
--           transparent = false,
--           inactive = true,
--           float = true,
--           nvimtree = true,
--           border = true,
--           title_invert = true,
--           italic_comments = true,
--           simple_syntax_colors = true,
--         },
--         termguicolors = true,
--         terminal_color = true,
--         plugin_default = "true",
--       })
--       vim.cmd("colorscheme astromars")
--       vim.api.nvim_set_hl(0, "Normal", { bg = "#2E2424" })
--       vim.api.nvim_set_hl(0, "NormalNC", { bg = "#261d1d" })
--
--       vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#291F1F" })
--       vim.api.nvim_set_hl(0, "CursorLine", { bg = "#392A2B" })
--       vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "#261d1d" })
--
--       vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#ffffff", bg = "#261d1d" })
--       end
--   }
-- }

-- return{
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       style = "Night",
--     },
--     config = function()
--       vim.cmd[[colorscheme tokyonight]]
--     end,
--   },
-- }

-- return {
--   {
--     "tyrannicaltoucan/vim-deep-space",
--     lazy = false,  -- Load the theme immediately
--     priority = 1000,  -- Ensure it loads first
--     config = function()
--       -- Apply the colorscheme
--       vim.cmd([[colorscheme deep-space]])
--
--       -- Enable true colors for better appearance
--       vim.opt.termguicolors = true
--
--       -- Set transparency (optional)
--       vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
--       vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
--     end,
--   }
-- }

-- return{
--   {
--     'projekt0n/github-nvim-theme',
--     name = 'github-theme',
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require('github-theme').setup({
--         -- ...
--       })
--
--       vim.cmd('colorscheme github_dark_dimmed')
--     end,
--   }
-- }

-- Xcode
return{
  {
    "lunacookies/vim-colors-xcode",
    name = "xcode",  -- optional, useful if you want to refer by name
    lazy = false,    -- load immediately (change to true if you want it lazy-loaded)
    priority = 1000, -- make sure it loads before other UI plugins
    config = function()
      vim.cmd.colorscheme("xcodedarkhc") -- or "xcodelight"
    end,
  }
}

-- Catppuccin
-- return{
--   {
--     'catppuccin/nvim',
--     name = 'catppuccin',
--     priority = 1000,
--     config = function()
--       require("catppuccin").setup({
--         transparent_background = true, -- enable this to disable background color
--         background = {
--           dark = "frappe", -- options: macchiato, mocha, latte, frappe
--         },
--         color_overrides = {
--           base = "#282c34"      }
--         })
--       vim.cmd('colorscheme catppuccin')
--     end,
--   }
-- }

--ZENBONES
-- return{
--   {
--     "zenbones-theme/zenbones.nvim",
--     -- Optionally install Lush. Allows for more configuration or extending the colorscheme
--     -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
--     -- In Vim, compat mode is turned on as Lush only works in Neovim.
--     dependencies = "rktjmp/lush.nvim",
--     lazy = false,
--     priority = 1000,
--     -- you can set set configuration options here
--     config = function()
--         vim.g.zenbones_darken_comments = 45
--         vim.cmd.colorscheme('zenbones')
--     end
--   }
-- }

--for null value use "return {}"
-- return{}
