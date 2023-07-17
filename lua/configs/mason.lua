require("mason").setup()
require("lspconfig.configs")
local util = require "formatter.util"
require("mason-lspconfig").setup {
  ensure_installed = {"lua_ls", "gopls", "rust_analyzer", "jedi_language_server"},
  automatic_installation = true,
}


require("lspconfig").gopls.setup{
  cmd = {
    os.getenv("UserProfile"):gsub("\\", "/") .. '/go/bin/gopls',
    '-v',
    '-rpc.trace',
    os.getenv("UserProfile"):gsub("\\", "/") .. '/go/bin/gopls.log',
  };
  settings = {
    gopls = {
      -- experimentalWorkspaceModule = true
      -- expandWorkspaceToModule = true,
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      codelenses = {
        gc_details = true,
      }
    },
  }
}

require("lspconfig")["rust_analyzer"].setup {
}

require("lspconfig").lua_ls.setup {
  settings = {
          Lua = {
              diagnostics = {
                  globals = { 'vim' }
      }
    }
  }
}

require('lspconfig').jedi_language_server.setup {
}

require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require("formatter.filetypes.lua").stylua,

      -- You can also define your own configuration
      function()
        -- Supports conditional formatting
        if util.get_current_buffer_file_name() == "special.lua" then
          return nil
        end

        -- Full specification of configurations is down below and in Vim help
        -- files
        return {
          exe = "stylua",
          args = {
            "--search-parent-directories",
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--",
            "-",
          },
          stdin = true,
        }
      end
    },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
