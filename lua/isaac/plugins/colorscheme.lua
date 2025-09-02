-- return {
--   {
--     "askfiy/visual_studio_code",
--     priority = 100,
--     config = function()
--         vim.cmd([[colorscheme visual_studio_code]])
--     end,
--   },
-- }

-- another onedark to try is "https://github.com/monsonjeremy/onedark.nvim"
-- return{
--   -- Using Lazy
--   {
--     "navarasu/onedark.nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require('onedark').setup {
--         style = 'warm'
--       }
--       -- Enable theme
--       require('onedark').load()
--     end
--   }
-- }

-- return{
--   {
--     "sainnhe/gruvbox-material",
--     lazy = false, -- load immediately
--     priority = 1000, -- make sure it loads before other plugins
--     config = function()
--       vim.g.gruvbox_material_background = "soft" -- options: 'soft', 'medium', 'hard'
--       vim.g.gruvbox_material_palette = "material" -- options: 'material', 'mix', 'original'
--       vim.g.gruvbox_material_enable_italic = 1
--       vim.g.gruvbox_material_transparent_background = 0
--       vim.o.background = "dark"
--       vim.cmd.colorscheme("gruvbox-material")
--     end
--   }
-- }

-- return {
--   "lewpoly/sherbet.nvim",
--   config = function()
--     vim.cmd("colorscheme sherbet")
--   end
-- }

-- return{
--   {
--     'datsfilipe/vesper.nvim',
--     priority = 100,
--     config = function ()
--       vim.cmd.colorscheme("vesper")
--       require('vesper').setup({
--         transparent = false, -- Boolean: Sets the background to transparent
--         italics = {
--           comments = true, -- Boolean: Italicizes comments
--           keywords = true, -- Boolean: Italicizes keywords
--           functions = false, -- Boolean: Italicizes functions
--           strings = true, -- Boolean: Italicizes strings
--           variables = false, -- Boolean: Italicizes variables
--         },
--         overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
--         palette_overrides = {},
--       })
--     end
--   }
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
--
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


-- return{
--   {
--     'projekt0n/github-nvim-theme',
--     name = 'github-theme',
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require('github-theme').setup({
--       specs = {
--         github_dark_default = {
--           syntax = {
--             operator = "#c792ea",
--           },
--           git = {
--             changed = "#ffcb6b",
--           },
--           bg1 = "#171B22", -- actual background
--         },
--       },
--       groups = {
--         github_dark = {
--           Normal = { bg = "#171B22" },
--           NormalNC = { bg = "#171B22" },
--           NormalFloat = { bg = "#171B22" },
--           FloatBorder = { bg = "#171B22" },
--           SignColumn = { bg = "#171B22" },
--         },
--       },
--     })
--
--       -- vim.api.nvim_set_hl(0, "@variable.javascript", { fg = "#6FB4EE" }) -- Change color to yellowish
--       vim.api.nvim_set_hl(0, "@operator.javascript", { fg = "#C35E58" }) -- Or any hex color
--       vim.cmd('colorscheme github_dark_default')
--       require("github-theme").compile()
--     end,
--   }
-- }

-- -- Xcode
-- return{
--   {
--     "lunacookies/vim-colors-xcode",
--     name = "xcode",  -- optional, useful if you want to refer by name
--     lazy = false,    -- load immediately (change to true if you want it lazy-loaded)
--     priority = 1000, -- make sure it loads before other UI plugins
--     config = function()
--       vim.cmd.colorscheme("xcodedarkhc") -- or "xcodelight"
--     end,
--   }
-- }

-- return{
--   { 
--     url = 'https://gitlab.com/sxwpb/halfspace.nvim',
--     config = function()
--       vim.cmd.colorscheme('halfspace')
--     end,
--   },
-- }

-- return{
--   {
--     "Mofiqul/adwaita.nvim",
--     lazy = false,
--     priority = 1000,
--
--     -- configure and set on startup
--     config = function()
--         -- vim.g.adwaita_darker = true             -- for darker version
--         vim.g.adwaita_disable_cursorline = true -- to disable cursorline
--         -- vim.g.adwaita_transparent = true        -- makes the background transparent
--         vim.cmd('colorscheme adwaita')
--     end
--   }
-- }

-- -- Catppuccin
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

--for null value use "return {}"
-- return{}


return {
  -- Gruvbox-material theme: This will be your default theme.
  {
    "sainnhe/gruvbox-material",
    lazy = false, -- Load this immediately
    priority = 1000, -- Make sure it loads before other plugins
    config = function()
      -- Settings for the gruvbox-material theme
      vim.g.gruvbox_material_background = "soft"
      vim.g.gruvbox_material_palette = "material"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_transparent_background = 0
      vim.o.background = "dark"
      
      -- Set gruvbox-material as the initial colorscheme.
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- Github-nvim-theme: This will be your theme for JavaScript and TypeScript.
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- Make sure this is also loaded during startup
    config = function()
      -- Setup function for the github-theme plugin
      require("github-theme").setup({
        specs = {
          github_dark_default = {
            syntax = {
              operator = "#c792ea",
            },
            git = {
              changed = "#ffcb6b",
            },
            bg1 = "#171B22", -- The actual background color
          },
        },
        groups = {
          github_dark = {
            Normal = { bg = "#171B22" },
            NormalNC = { bg = "#171B22" },
            NormalFloat = { bg = "#171B22" },
            FloatBorder = { bg = "#171B22" },
            SignColumn = { bg = "#171B22" },
          },
        },
      })
      
      -- Compile the theme settings.
      require("github-theme").compile()
    end,
  },
}

