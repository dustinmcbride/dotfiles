return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      enabled = true,
      hidden = true, -- Show hidden files in the explorer
    },
    picker = {
      enabled = true,
      hidden = true, -- Show hidden files in the picker
      sources = {
        files = {
          hidden = true, -- Ensure hidden files are shown in file source
        },
      },
    },
  },
}
