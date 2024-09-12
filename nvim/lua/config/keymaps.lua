-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del({ "i", "x", "n", "s" }, "<A-j>")
vim.keymap.del({ "i", "x", "n", "s" }, "<A-k>")
