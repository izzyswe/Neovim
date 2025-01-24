return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- Import mason
    local mason = require("mason")
    -- Enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- Import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      -- List of servers for mason to install
      ensure_installed = {
        "html",
        "cssls",
        "tailwindcss",
        "css_variables",
       -- "golangci_lint_ls", --Golang
       -- "gopls", -- Golang LSP
        -- "harper_ls", -- language grammar checker LSP
        "templ", --templ for Go LSP
        "ast_grep", -- LSP for JS, python, go, c#, c, kotlin, rust, typescript
        "jdtls", -- Java LSP
        "kotlin_language_server", -- Kotlin LSP
        "lua_ls", -- Lua LSP
        "graphql",
        "emmet_ls", -- i think a autocompletion for html, js and js fraemworks
        "prismals",
        "pylsp",
        "ts_ls",
      },
      automatic_installation = true,
    })

    local mason_tool_installer = require("mason-tool-installer")
    mason_tool_installer.setup({
      ensure_installed = {
        -- 'gofumpt',
        -- 'golines',
        -- 'gomodifytags',
        -- 'gotests',
        -- 'gopls',
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
      },
    })
  end,
}
