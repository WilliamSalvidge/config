vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- first param = mode ('i' = insert, 'n' = normal)
-- we've set leader to space so pressing " +" in normal mode will induce <C-a> or increment number 
-- <C-a> means Control + a
keymap.set('n', '<leader>+', '<C-a>')
keymap.set('n', '<leader>-', '<C-x>')

-- <CR> means Carriage return
keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close new tab
keymap.set('n', '<leader>tn', ':tabn<CR>') -- got to next tab
keymap.set('n', '<leader>tp', ':tabp<CR>') -- got to previous tab

-- nvim-tree --
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>') -- close new tab
keymap.set('n', '<leader>v', ':NvimTreeFocus<CR>') -- toggle to tree if in editor
keymap.set('n', '<leader>c', ':NvimTreeResize +10<CR>') -- make sidebar 10 wider
keymap.set('n', '<leader>x', ':NvimTreeResize -10<CR>') -- make sidebar 10 wider


-- telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>')
