return {
  {
    "rmehri01/onenord.nvim",
    lazy = false,  -- Load the theme immediately
    priority = 1000,  -- Ensure it loads first
    config = function()
      -- Configure the OneNord theme
      require('onenord').setup({
        borders = true,  -- Enable borders around windows
        fade_nc = true,  -- Fade non-current windows
        styles = {
          comments = "italic",  -- Italicize comments
          strings = "NONE",  -- Normal style for strings
          keywords = "bold",  -- Bold for keywords
        },
        disable = {
          background = true,  -- Keep the background
          cursorline = false,  -- Disable the cursorline
          eob_lines = false,  -- Hide end-of-buffer lines
        },
      })

      -- Apply the colorscheme
      vim.cmd([[colorscheme onenord]])
    end,
  }
}





