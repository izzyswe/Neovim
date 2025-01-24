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

return {
  -- Lazy
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        -- optional configuration here
        vim.cmd.colorscheme("vague")
      })
    end
  },
}

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









