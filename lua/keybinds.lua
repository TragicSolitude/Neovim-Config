local command = require 'commands'

vim.keymap.set('n', '<C-k><C-n>', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<C-k><C-m>', '<cmd>NvimTreeFindFile<cr>')
vim.keymap.set('n', '<C-k><C-u>', '<cmd>UndotreeToggle<cr>')
vim.keymap.set('n', '<C-k><C-j>', '<cmd>TagbarToggle<cr>')

-- Doesn't work for some reason. Something to do with how vim handles the shift
-- key
--vim.keymap.set({'n', 'i'}, '<C-T><C-T>', '<cmd>tabnew<cr>')

vim.keymap.set({'n', 'i'}, '<C-t><C-t>', '<cmd>tabnext<cr>')
vim.keymap.set({'n', 'i'}, '<C-t><C-r>', '<cmd>tabprevious<cr>')
vim.keymap.set('n', '<C-c>', '<cmd>bp\\<bar>bd #<cr>')
-- LSP and completion
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition)
vim.keymap.set('n', 'gr', command.lsp_references)
vim.keymap.set('n', 'gR', vim.lsp.buf.rename)
vim.keymap.set('n', 'ge', vim.diagnostic.open_float)
vim.keymap.set('n', 'gE', '<cmd>TroubleToggle document_diagnostics<cr>')
vim.keymap.set('n', 'gw', vim.lsp.buf.code_action)
vim.keymap.set('n', '[d', vim.lsp.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.lsp.diagnostic.goto_next)
vim.keymap.set('i', '<Tab>', command.smart_tab, { expr = true })
vim.keymap.set('i', '<S-Tab>', command.smart_tab_rev, { expr = true })
vim.keymap.set('n', 'gs', '<cmd>Git<cr>')
vim.keymap.set('n', 'gb', '<cmd>BufferLinePick<cr>')
-- IDK Man...
vim.keymap.set({'n', 'i'}, '<C-`>', '<esc><cmd>vert term<cr>')
vim.keymap.set('n', 'ff', command.project_files)
vim.keymap.set('n', 'fg', command.project_grep)
-- Old implementation
--U.map("n", "fm", "<Cmd>:Telescope man_pages sections=[v:count?string(v:count):'ALL']<cr>")
vim.keymap.set('n', 'fm', command.search_man_pages)

---- Convenience ----
-- Swap between current and previous buffer
vim.keymap.set('n', '<BS>', '<C-^>')
-- Clear search highlights and error messages
vim.keymap.set('n', '<cr>', '<cmd>nohlsearch<cr><bar><cmd>echon<cr>')
-- Scroll using ',' and 'm'
vim.keymap.set('n', ',', '<C-y>')
vim.keymap.set('n', 'm', '<C-e>')
-- Cycle tabs with 'H' and 'L'
vim.keymap.set('n', 'H', 'gT')
vim.keymap.set('n', 'L', 'gt')

---- Window Navigation Keybinds ----
-- Terminal
vim.keymap.set('t', '<esc>', '<C-\\><C-n>')
vim.keymap.set({'t', 'i', 'n'}, '<A-h>', '<cmd>wincmd h<cr>')
vim.keymap.set({'t', 'i', 'n'}, '<A-j>', '<cmd>wincmd j<cr>')
vim.keymap.set({'t', 'i', 'n'}, '<A-k>', '<cmd>wincmd k<cr>')
vim.keymap.set({'t', 'i', 'n'}, '<A-l>', '<cmd>wincmd l<cr>')