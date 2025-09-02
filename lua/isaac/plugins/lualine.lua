return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function() 
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local bubbleColors = {
      blue   = '#80a0ff',
      cyan   = '#79dac8',
      black  = '#080808',
      white  = '#c6c6c6',
      yellow = "#FFDA7B",
      red    = '#ff5189',
      violet = '#d183e8',
      grey   = '#303030',
      xcode_bg = "#1F1F24",
      inactive_bg = '#2c3043',
    }

    local bubbles_theme = {
      normal = {
        a = { fg = bubbleColors.black, bg = bubbleColors.blue },
        b = { fg = bubbleColors.white, bg = bubbleColors.xcode_bg },
        -- c = { fg = bubbleColors.white },
      },

      insert = { a = { fg = bubbleColors.black, bg = bubbleColors.cyan } },
      visual = { a = { fg = bubbleColors.black, bg = bubbleColors.violet } },
      replace = { a = { fg = bubbleColors.black, bg = bubbleColors.red } },

      command = {
        a = { bg = bubbleColors.yellow, fg = bubbleColors.xcode_bg },
        -- b = { bg = colors.bg, fg = colors.fg },
        -- c = { bg = colors.bg, fg = colors.fg },
      },


      inactive = {
        a = { fg = bubbleColors.white },-- bg = bubbleColors.inactive_bg },
        b = { fg = bubbleColors.white },-- bg = bubbleColors.inactive_bg },
        c = { fg = bubbleColors.white },
      },
    }

    require('lualine').setup {
      options = {
        theme = bubbles_theme,
        component_separators = '',
        -- section_separators = { left = '' , right = '' },
        section_separators = { left = ' ' , right = '  ' },
        globalstatus = true,
      },
      sections = {
        -- lualine_a = { { 'mode', separator = { left = '' }, right_padding = 0 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=', --[[ add your center components here in place of this comment ]]
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
        },
        lualine_y = { 'encoding','fileformat', 'filetype', 'lazy_status', 'progress' },
        lualine_z = {
          { 'location', left_padding = 0 }, --separator = { right = '' }
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
  }
  end,
}



-- DEAD CODE more like unused code inside config = function
-- 
-- local lualine = require("lualine")
    -- local colors = {
    --   blue = "#65D1FF",
    --   green = "#3EFFDC",
    --   violet = "#FF61EF",
    --   yellow = "#FFDA7B",
    --   red = "#FF4A4A",
    --   fg = "#c3ccdc",
    --   bg = "#1b2024",
    --   xcode_bg ="#1F1F24",
    --   inactive_bg = "#2c3043",
    -- }

    -- configure lualine with modified theme
    -- lualine.setup({
    --   -- options = {
    --   --   theme = my_lualine_theme,
    --   -- },
    --   sections = {
    --     lualine_x = {
    --       {
    --         lazy_status.updates,
    --         cond = lazy_status.has_updates,
    --         color = { fg = "#ff9e64" },
    --       },
    --       { "encoding" },
    --       { "fileformat" },
    --       { "filetype" },
    --     },
    --   },
    -- })
