return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("matugen").setup()
      end,
    },
  },
}
