local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show messages
}

-- NORMAL MODE --

-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Split
vim.keymap.set('n', '<C-n>', ':new<CR>', opts)
vim.keymap.set('n', '<C-v>', ':vnew<CR>', opts)

-- Tab
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', opts)
vim.keymap.set('n', '<C-e>', ':tabnext<CR>', opts)
vim.keymap.set('n', '<C-q>', ':tabprev<CR>', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- File
vim.keymap.set('n', '<C-w>', ':w<CR>', opts)
vim.keymap.set('n', '<C-x>', ':q<CR>', opts)

----- Visual mode --
----- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

---- Insertion mode --
vim.keymap.set('i', 'kj', '<Esc>', opts)


-- Plugins

---- NERDtree 
vim.keymap.set('n', '<C-b>', ':NERDTreeToggle<CR>', opts)

--- Toggle term
vim.keymap.set('n', '<C-f>', '<cmd>ToggleTerm direction=float<CR>', opts)
vim.keymap.set('t', '<C-f>', '<C-\\><C-n><cmd>ToggleTerm direction=float<CR>', opts)

--- Telescope
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', 'fg', ':Telescope live_grep<CR>', opts)
vim.api.nvim_set_keymap('n', 'fh', ':Telescope help_tags<CR>', opts)
vim.api.nvim_set_keymap('n', 'fb', ':Telescope current_buffer_fuzzy_find<CR>', opts)