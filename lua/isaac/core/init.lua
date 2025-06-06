require("isaac.core.options")
require("isaac.core.keymaps")


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

