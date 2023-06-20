return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  {
    import = "astrocommunity.colorscheme.kanagawa-nvim",
    enabled = true,
  },
  {
    import = "astrocommunity.colorscheme.gruvbox-baby",
    enabled = false,
  },
  {
    import = "astrocommunity.colorscheme.dracula-nvim",
    enabled = false,
  },
  -- { import = "astrocommunity.colorscheme.mellow-nvim" },
  { import = "astrocommunity.color.twilight-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        backdrop = 0.8,
        width = function() return math.min(140, vim.o.columns * 0.75) end,
        height = 1,
      },
    },
  },
}
