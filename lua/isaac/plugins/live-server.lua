return{
  {
    'barrett-ruth/live-server.nvim',
    config = function()
      require'live-server'.setup{
      -- Optional: Set the command to use for running the live server
      command = "live-server",

      -- Optional: Define file types that trigger the live server
      filetypes = {"html", "css", "javascript"}
    }
      end
  }
}
