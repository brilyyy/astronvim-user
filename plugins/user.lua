return {
  {
    "jose-elias-alvarez/typescript.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "tsserver" },
      },
    },
  },
  {
    "MaximilianLloyd/ascii.nvim",
    depedencies = {
      "MunifTanjim/nui.nvim",
    },
  },
}
