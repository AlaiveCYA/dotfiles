return {
  -- 🔍 Peek at definitions and references
  {
    "DNLHC/glance.nvim",
    cmd = "Glance",
  },

  -- ✨ Highlight text changed by undo/redo
  {
    "tzachar/highlight-undo.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- 📏 Automatically detect indentation
  {
    "NMAC427/guess-indent.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {},
  },

  -- 💫 Better search highlighting
  {
    "kevinhwang91/nvim-hlslens",
    event = "VeryLazy",
  },
}
