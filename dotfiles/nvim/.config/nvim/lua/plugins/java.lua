return {
  { import = "lazyvim.plugins.extras.lang.java" },
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      opts.cmd = { vim.fn.exepath("jdtls") }
      return opts
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        java = { "google-java-format" },
      },
    },
  },
}
