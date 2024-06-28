local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.opt.rtp:append('/home/sono/.local/share/nvim/lazy')
require("lazy").setup({
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
    },
    -- File Tree
    {
        "scrooloose/nerdtree",
    },
	{
		"ryanoasis/vim-devicons"
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config/nvim-cmp")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		requires = {"rafamadriz/friendly-snippets"},
	},
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"}
    },
	-- Toggle term
    {
        'akinsho/toggleterm.nvim',
    },
	-- Telescope
	{
        'nvim-telescope/telescope.nvim',
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },
	-- LSP manager
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"nvim-lsp-installer",
})
