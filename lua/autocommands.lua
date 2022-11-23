vim.api.nvim_create_autocmd('FileType', {
    pattern = 'yaml',
    callback = function ()
        vim.bo.tabstop = 2
        vim.bo.softtabstop = 2
        vim.bo.shiftwidth = 2
        vim.bo.expandtab = true
    end
})
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
    pattern = '*.volt',
    callback = function ()
        vim.bo.filetype = 'html'
    end
})

-- Seems to be happening on more than just json files for some reason
--vim.api.nvim_create_autocmd('FileType', {
--    pattern = 'json',
--    callback = function ()
--        vim.o.foldmethod = 'expr'
--        vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
--    end
--})

-- A little too aggressive, almost perfect
--vim.api.nvim_create_autocmd('WinNew', {
--    pattern = '*',
--    callback = function ()
--        vim.api.nvim_command('wincmd H')
--    end
--})
