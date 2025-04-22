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
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import mason_lspconfig plugin
    local mason_lspconfig = require("mason-lspconfig")

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
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
      end,
    })

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

-- -- Create Eclipse project structure command
--     vim.api.nvim_create_user_command("EclipseInit", function()
--         local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
--         local project_root = vim.fn.getcwd()
-- -- <classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-21">
--         local classpath = [[
-- <?xml version="1.0" encoding="UTF-8"?>
-- <classpath>
--     <classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER">
-- 		  <attributes>
-- 			  <attribute name="module" value="true"/>
-- 		  </attributes>
-- 	  </classpathentry>
--     <classpathentry kind="src" path="src"/>
--     <classpathentry kind="output" path="bin"/>
-- </classpath>
--         ]]
--
--         local project = string.format([[
-- <?xml version="1.0" encoding="UTF-8"?>
-- <projectDescription>
--     <name>%s</name>
--     <comment></comment>
--     <projects></projects>
--     <buildSpec>
--         <buildCommand>
--             <name>org.eclipse.jdt.core.javabuilder</name>
--             <arguments></arguments>
--         </buildCommand>
--     </buildSpec>
--     <natures>
--         <nature>org.eclipse.jdt.core.javanature</nature>
--     </natures>
-- </projectDescription>
--         ]], project_name)
--
--         -- Create folders
--         vim.fn.mkdir(project_root .. "/src", "p")
--         vim.fn.mkdir(project_root .. "/bin", "p")
--
--         -- Write .classpath file
--         local classpath_file = io.open(project_root .. "/.classpath", "w")
--         if classpath_file then
--             classpath_file:write(classpath)
--             classpath_file:close()
--         end
--
--         -- Write .project file
--         local project_file = io.open(project_root .. "/.project", "w")
--         if project_file then
--             project_file:write(project)
--             project_file:close()
--         end
--
--         print("Eclipse project structure initialized in " .. project_root)
--     end, {})

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,

      -- Language server configurations
      ["phpactor"] = function()
        -- Configure PHP server
        lspconfig["phpactor"].setup({
          capabilities = capabilities,
        })
      end,
      ["omnisharp"] = function()
        lspconfig["omnisharp"].setup({
        cmd = { vim.fn.stdpath("data") .. "/mason/bin/omnisharp" },
        capabilities = capabilities,
        root_dir = require("lspconfig.util").root_pattern(".csproj", ".sln", ".git")(vim.fn.getcwd()),
        settings = {
            omnisharp = {
                useModernNet = true,
            },
        },
      })
      end,
      ["rust_analyzer"] = function()
        -- Configure Rust server
        lspconfig["rust_analyzer"].setup({
          capabilities = capabilities,
        })
      end,
      ["gopls"] = function()
        -- Configure Go server
        lspconfig["gopls"].setup({
          capabilities = capabilities,
        })
      end,
      ["jdtls"] = function()
         -- Configure Java server
         lspconfig["jdtls"].setup({
            cmd = {
             "/Users/isaackim/.local/share/nvim/mason/bin/jdtls",
             "-data",
             vim.fn.stdpath("cache") .. "/jdtls/workspace",
           },
           root_dir = require("lspconfig.util").root_pattern('pom.xml', ".project", "gradlew",'build.gradle', '.git'),
          capabilities = capabilities,
          settings = {
            java = {
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
      end,
      ["pylsp"] = function()
        -- Configure Python server
        lspconfig["pylsp"].setup({
        capabilities = capabilities,
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = { maxLineLength = 150 }
              }
            }
          }
      })
      end,
      ["pyright"] = function()
        -- Configure Python server
        lspconfig["pyright"].setup({
          capabilities = capabilities,
        })
      end,
      ["html"] = function()
        -- Configure HTML server
        lspconfig["html"].setup({
          capabilities = capabilities,
        })
      end,
      ["cssls"] = function()
        -- Configure CSS server
        lspconfig["cssls"].setup({
          capabilities = capabilities,
        })
      end,
      ["kotlin_language_server"] = function()
        -- Configure Kotlin server
        lspconfig["kotlin_language_server"].setup({
          capabilities = capabilities,
        })
      end,
      ["templ"] = function()
        -- Configure Templ server
        lspconfig["templ"].setup({
          capabilities = capabilities,
        })
      end,
      ["svelte"] = function()
        -- Configure svelte server
        lspconfig["svelte"].setup({
          capabilities = capabilities,
          on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePost", {
              pattern = { "*.js", "*.ts" },
              callback = function(ctx)
                client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
              end,
            })
          end,
        })
      end,
      ["graphql"] = function()
        -- Configure graphql language server
        lspconfig["graphql"].setup({
          capabilities = capabilities,
          filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
        })
      end,
      ["emmet_ls"] = function()
        -- configure emmet language server
        lspconfig["emmet_ls"].setup({
          capabilities = capabilities,
          filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
        })
      end,
      ["lua_ls"] = function()
        -- configure lua server (with special settings)
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        })
      end,
    })
  end,
}

