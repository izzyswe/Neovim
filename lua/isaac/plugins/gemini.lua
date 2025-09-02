return{
  {
    "jonroosevelt/gemini-cli.nvim",
    config = function()
      require("gemini").setup({
        split_direction = "vertical", -- optional: "vertical" (default) or "horizontal"
        width = 5
      })

      vim.api.nvim_create_autocmd("WinEnter", {
        callback = function()
          local bufname = vim.api.nvim_buf_get_name(0)
          if bufname:match("^gemini://") then
            vim.cmd("vertical resize 10")
          end
        end,
    })
    end,
  }
}
