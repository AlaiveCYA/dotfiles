-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- local image = vim.fn.expand("~/.config/nvim/assets/freedom_wings.jpg")
--
-- -- Show wallpaper when Neovim starts
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.fn.jobstart({
--       "kitten",
--       "@",
--       "set-background-image",
--       "--layout=cscaled",
--       image,
--     }, { detach = true })
--   end,
-- })
--
-- -- Remove wallpaper when Neovim exits
-- vim.api.nvim_create_autocmd("VimLeavePre", {
--   callback = function()
--     vim.fn.jobstart({
--       "kitten",
--       "@",
--       "set-background-image",
--       "none",
--     }, { detach = true })
--   end,
-- })
--
-- local transparent_groups = {
--   "Normal",
--   "NormalNC",
--   "NormalFloat",
--   "FloatBorder",
--   "SignColumn",
--   "LineNr",
--   "CursorLineNr",
--   "EndOfBuffer",
--   "Folded",
--   "FoldColumn",
--   "Pmenu",
--   "PmenuSel",
--   "WinSeparator",
-- }
--
-- local function make_transparent()
--   for _, group in ipairs(transparent_groups) do
--     vim.api.nvim_set_hl(0, group, { bg = "NONE" })
--   end
-- end
--
-- -- Apply transparency after the colorscheme loads
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = make_transparent,
-- })

-- Also apply it at startup
-- make_transparent()

vim.api.nvim_set_hl(0, "WinSeparator", {
  fg = "#77758A",
  bg = "NONE",
})
