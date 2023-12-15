local status, telescope = pcall(require, "lazygit")
if (not status) then return end

vim.keymap.set('n', '<leader>g', '<Cmd>:LazyGit<CR>', {silent=true})

