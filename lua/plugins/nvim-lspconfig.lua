local on_attach = require("util.lsp").on_attach

local config = function()
  require("neoconf").setup({})
  local cmp_nvim_lsp = require("cmp_nvim_lsp")

  local lspconfig = require("lspconfig")

  local signs = { Error = "", Warn = "", Hint = "", Info = "" }

  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = ""})
  end

  local capabilities = cmp_nvim_lsp.default_capabilities()

  -- lua
  lspconfig.lua_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
      Lua = {
        -- make the language server recognise "vim" global
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          -- make language server aware of runtime files
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.stdpath("config") .. "/lua"] = true,
          },
        },
      },
    },
  })

  -- JS/TS
  lspconfig.ts_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {
      "typescript",
    },
    root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json")
  })

  local luacheck = require('efmls-configs.linters.luacheck')
  local stylua = require('efmls-configs.formatters.stylua')
  local eslint_d = require('efmls-configs.linters.eslint_d')
  local prettierd = require('efmls-configs.formatters.prettier_d')


  -- configure efm server
  lspconfig.efm.setup({
    filetypes = {
      "lua",
      "typescript",
    },
    init_options = {
      documentFormatting = true,
      documentRangeFormatting = true,
      hover = true,
      documentSymbol = true,
      codeAction = true,
      completion = true,
    },
    settings = {
      languages = {
        lua = { luacheck, stylua },
        typescript = { eslint_d, prettierd },
      },
    },
  })

end

return {
  "neovim/nvim-lspconfig",
  config = config,
  lazy = false,
  dependencies = {
    "windwp/nvim-autopairs",
    "williamboman/mason.nvim",
    "creativenull/efmls-configs-nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
  },
}

