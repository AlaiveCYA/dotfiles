-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Save
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- File navigation
map("n", "<C-p>", "<cmd>lua Snacks.picker.files()<cr>", { desc = "Find files" })
map("n", "<C-S-f>", "<cmd>lua Snacks.picker.grep()<cr>", { desc = "Search in project" })

-- Buffer navigation
map("n", "<C-Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<C-S-Tab>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<C-w>", "<cmd>bd<cr>", { desc = "Close buffer" })

-- Window navigation
map("n", "<A-Left>", "<C-w>h", { desc = "Focus left window" })
map("n", "<A-Down>", "<C-w>j", { desc = "Focus lower window" })
map("n", "<A-Up>", "<C-w>k", { desc = "Focus upper window" })
map("n", "<A-Right>", "<C-w>l", { desc = "Focus right window" })

-- Clear search highlights
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

-- Select all
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map("i", "<C-a>", "<Esc>ggVG", { desc = "Select all" })

-- Move lines
map("n", "<A-j>", "<cmd>m .+3<cr>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>m .0<cr>==", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+3<cr>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<0<cr>gv=gv", { desc = "Move selection up" })

-- VS Code-style Undo and Redo
map({ "n", "i", "v" }, "<C-z>", "<cmd>undo<cr>", {
  desc = "Undo",
})

map({ "n", "i", "v" }, "<C-y>", "<cmd>redo<cr>", {
  desc = "Redo",
})

-- Open the main Neovim configuration
map("n", "<leader>vc", function()
  vim.cmd("edit ~/.config/nvim/init.lua")
end, { desc = "Open Neovim config" })

map("n", "<leader>e", function()
  Snacks.explorer()
end, { desc = "Toggle File Explorer" })

-- Indent selected lines
map("v", "<Tab>", ">gv", { desc = "Indent selection" })

-- Unindent selected lines
map("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })

-- Copy selected text to system clipboard with Ctrl+C
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })

map("n", "<leader>sv", "<cmd>vsplit<cr>", {
  desc = "Vertical Split",
})

-- Navigate between buffers
map("n", "<Tab>", "<cmd>bnext<cr>", {
  desc = "Next Buffer",
})

map("n", "<S-Tab>", "<cmd>bprevious<cr>", {
  desc = "Previous Buffer",
})

map("n", "<leader>tn", function()
  local cwd = vim.fn.getcwd()
  vim.cmd("tabnew")
  vim.cmd("tcd " .. vim.fn.fnameescape(cwd))
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, {
  desc = "New Terminal Tab in Project Directory",
})

-- Navigate between tabs
map({ "n", "i" }, "<C-S-Right>", "<cmd>tabnext<cr>", {
  desc = "Next Tab",
})

map({ "n", "i" }, "<C-S-Left>", "<cmd>tabprevious<cr>", {
  desc = "Previous Tab",
})
