require("isaac.core.options")
require("isaac.core.keymaps")

-- NOTE: The plugins themselves (like gruvbox-material and github-theme)
-- must be loaded before these autocommands will work.

-- -- Create a named autocmd group to manage our theme-switching logic.
-- local theme_group = vim.api.nvim_create_augroup("ThemeByFileType", { clear = true })
--
-- -- Autocommand to switch to the github-dark-default theme for JavaScript and TypeScript files.
-- vim.api.nvim_create_autocmd("FileType", {
--   group = theme_group,
--   pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
--   callback = function()
--     vim.cmd.colorscheme("github_dark_default")
--   end,
-- })
--
-- -- Autocommand to switch back to the gruvbox-material theme for other file types.
-- vim.api.nvim_create_autocmd("FileType", {
--   group = theme_group,
--   pattern = { "python", "go", "rust", "lua" },
--   callback = function()
--     vim.cmd.colorscheme("gruvbox-material")
--   end,
-- })

--custom command to run and create a gradle java project
vim.api.nvim_create_user_command(
  'GradleInit',
  function()
    vim.cmd('!gradle init --type java-application')
  end,
  { nargs = 0 }
)

vim.api.nvim_create_user_command(
  'MavenInit',
  function(opts)
    local project_name = opts.args
    vim.cmd('!mvn archetype:generate -DgroupId=com.'.. project_name.. ' -DartifactId=' .. project_name ..' -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.5 -DinteractiveMode=false')
  end,
  { nargs = 1 }
)

vim.api.nvim_create_user_command(
  'DotNetInit',
  function(opts)
    local project_name = opts.args
    vim.cmd('!dotnet new mvc -o ' .. project_name)
  end,
  { nargs = 1 }
)

vim.api.nvim_create_user_command(
  'DNrun',
  function()
    vim.cmd('!dotnet build && dotnet run')
  end,
  { nargs = 0 }
)

-- require("isaac.core.color") -- Load color scheme

