local tokyo_status, tokyonight = pcall(require, 'tokyonight')
if not tokyo_status then
	return
end

tokyonight.setup({
	style = 'night' -- 'storm', 'night', 'moon' and 'day'
})

vim.cmd [[ colorscheme tokyonight ]]
