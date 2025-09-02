return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
    "williamboman/mason.nvim",
  },
  config = function()
    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    
    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }

        -- set keybinds
        opts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d",function()
          vim.diagnostic.jump({ count = -1, float = true })
        end, opts)

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d",function()
          vim.diagnostic.jump({ count = 1, float = true })
        end, opts)

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
      end,
    })

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN]  = " ",
          [vim.diagnostic.severity.HINT]  = "󰠠 ",
          [vim.diagnostic.severity.INFO]  = " ",
        },
      },
    })

    vim.o.updatetime = 300
    vim.api.nvim_create_autocmd("CursorHold", {
      callback = function()
        local float_opts = {
          focusable = false,
          close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost", "ModeChanged" },
        }
        vim.diagnostic.open_float(nil, float_opts)
      end,
    })

    vim.lsp.config('omnisharp', {
      capabilities = capabilities,
    })

    vim.lsp.config('rust_analyzer', {
      capabilities = capabilities,
    })

    vim.lsp.config('gopls', {
      capabilities = capabilities,
    })

   vim.lsp.config('jdtls', {
      capabilities = capabilities,
      settings = {
        java = {
          root_markers = { '.project', 'pom.xml', 'build.gradle', 'build.gradle.kts', '.git' },
          configuration = {
            updateBuildConfiguration = "automatic",
          },
          maven = {
            downloadSources = true,
          },
          implementationsCodeLens = {
            enabled = true,
          },
          referencesCodeLens = {
            enabled = true,
          },
          format = {
            enabled = true,
            settings = {
              url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
              profile = "GoogleStyle",
            },
          },
        },
      },
    })

    vim.lsp.config('pylsp', {
      capabilities = capabilities,
      -- Configure Python server
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = { maxLineLength = 150 }
          }
        }
      }
    })

    vim.lsp.config('pyright', {
      capabilities = capabilities,
    })

    vim.lsp.config('clangd',{
      capabilities = capabilities,
      filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
      cmd = { "clangd" },
      root_markers = {
        '.clangd',
        '.clang-tidy',
        '.clang-format',
        'compile_commands.json',
        'compile_flags.txt',
        'configure.ac', -- AutoTools
        '.git',
      },
      offsetEncoding = { "utf-8", "utf-16" },
      textDocument = {
        completion = {
          editsNearCursor = true,

        },
      },
    })

    vim.lsp.config('html', {
      capabilities = capabilities,
    })

    vim.lsp.config('somesass_ls', {
      capabilities = capabilities,
      filetypes = { 'scss', 'sass'},
      root_markers = { ".git", ".package.json" },
      settings = {
        somesass = {
          suggestAllFromOpenDocument = true
        }
      }
    })

    vim.lsp.config('cssls', {
      capabilities = capabilities,
      filetypes = { "css", "scss", "less" },
      init_options = {
        provideFormatter = true
      },
      settings = {
        css = {
          validate = true
        },
        less = {
          validate = true
        },
        scss = {
          validate = true
        }
      }
    })

    vim.lsp.config('eslint', {
      capabilities = capabilities,
      filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" }
    })

    vim.lsp.config('graphql', {
      capabilities = capabilities,
      filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
    })

    vim.lsp.config('kotlin_language_server', {
      capabilities = capabilities,
    })

    vim.lsp.config('templ', {
      capabilities = capabilities,
    })

    vim.lsp.config('svelte', {
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePost", {
          pattern = { "*.js", "*.ts" },
            callback = function(ctx)
              client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
            end,
      })
      end
    })

    vim.lsp.config('graphql', {
      capabilities = capabilities,
      filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
    })

    vim.lsp.config('emmet_ls', {
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
    })

    vim.lsp.config('lua_ls', {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
            disable = { 'missing-fields' },
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })
  vim.lsp.enable({
      'phpactor',
      'omnisharp',
      'rust_analyzer',
      'gopls',
      'jdtls',
      'pylsp',
      'pyright',
      'html',
      'somesass_ls',
      'cssls',
      'kotlin_language_server',
      'templ',
      'svelte',
      'graphql',
      'emmet_ls',
      'lua_ls'
  })
end,
}
