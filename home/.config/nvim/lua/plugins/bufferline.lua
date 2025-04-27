return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      numbers = "ordinal", -- show 1,2,3,4 next to buffer names
      separator_style = "slant", -- optional: makes it prettier
      diagnostics = "nvim_lsp", -- optional: show LSP errors on the buffers
    },
  },
}
