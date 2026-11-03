-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- VS Code-like editing
opt.number = true
opt.relativenumber = false
opt.signcolumn = "yes"
opt.cursorline = true
opt.wrap = false
opt.scrolloff = 5

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Comfortable UI
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.termguicolors = true

vim.o.updatetime = 500

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    if #vim.lsp.get_clients({ bufnr = 0 }) > 0 then
      vim.diagnostic.open_float(nil, {
        focus = false,
        scope = "cursor",
      })
    end
  end,
})
