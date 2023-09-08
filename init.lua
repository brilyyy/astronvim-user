return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "v3.*", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = {},
  },

  -- Set colorscheme to use
  colorscheme = "vscode",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    -- customize lsp formatting options
    setup_handlers = {
      tsserver = function(_, opts) require("typescript").setup { server = opts } end,
    },
    config = {
      tsserver = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern("package.json", "tsconfig.json")
        return opts
      end,
      tailwindcss = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern("tailwind.config.js", "tailwind.config.ts")
        return opts
      end,
      eslint = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern("package.json", ".eslintrc.json", ".eslintrc.js")
        return opts
      end,
    },
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
        "lua_ls",
        "tsserver",
      },
      timeout_ms = 3200, -- default format timeout
      filter = function(client) -- fully override the default formatting function
        local filetype = client.name
        local use_null_ls = client == "null-ls"
        local is_webfiles = filetype == "javascript"
          or filetype == "typescript"
          or filetype == "typescriptreact"
          or filetype == "javascriptreact"
          or filetype == "html"
          or filetype == "css"
          or filetype == "json"

        if filetype == "lua" then return use_null_ls end
        if is_webfiles then return use_null_ls end

        return true
      end,
    },
    servers = {},
  },

  -- NVChad Like statusline
  icons = {
    VimIcon = "",
    ScrollText = "",
    GitBranch = "",
    GitAdd = "",
    GitChange = "",
    GitDelete = "",
  },

  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
}
