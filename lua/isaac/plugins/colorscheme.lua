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

return {
  {
    "astronvim/astrotheme",
    lazy = false,
    priority = 1000,
    config = function()
      require("astrotheme").setup({
        palette = "astromars", -- String of the default palette to use when calling `:colorscheme astrotheme`
        style = {
          transparent = false,
          inactive = true,
          float = true,
          nvimtree = true,
          border = true,
          title_invert = true,
          italic_comments = true,
          simple_syntax_colors = true,
        },
        -- termguicolors = true,
        terminal_color = true,
        plugin_default = "true",
      })
      vim.cmd("colorscheme astromars")
      end
  }
}

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
--     "fynnfluegge/monet.nvim",
--     name = "monet",
--     config = function()
--       require("monet").setup {
--         transparent_background = false, -- Set this to true if you want a transparent background
--       }
--       vim.cmd([[colorscheme monet]]) -- Activate the Monet colorscheme
--     end
--   }
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

-- Catppuccin
-- return{
--   {
--     'catppuccin/nvim',
--     name = 'catppuccin',
--     priority = 1000,
--     config = function()
--       require("catppuccin").setup({
--         background = {
--           dark = "frappe", -- options: macchiato, mocha, latte, frappe
--         }
--       })
--       vim.cmd('colorscheme catppuccin')
--     end,
--   }
-- }

--for null value use "return {}"
-- return{}

