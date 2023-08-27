return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  {
    import = "astrocommunity.colorscheme.vscode-nvim",
  },
  -- { import = "astrocommunity.color.twilight-nvim" },
  { import = "astrocommunity.motion.flit-nvim" },
  -- { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.go" },

  -- {
  --   "folke/zen-mode.nvim",
  --   opts = { window = {
  --       backdrop = 0.8,
  --       width = function() return math.min(140, vim.o.columns * 0.75) end,
  --       height = 1,
  --     },
  --   },
  -- },
}
