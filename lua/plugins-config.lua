vim.opt.rtp:append('/home/sono/.local/share/nvim/lazy/lualine.nvim')
require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'},
      lualine_2 = {'tabs'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
}

vim.opt.rtp:append('/home/sono/.local/share/nvim/lazy/toggleterm.nvim')
require('toggleterm').setup({
 size = 20,
 hide_numbers = true,
 shade_filetypes = {},
 shade_terminals = true,
 shading_factor = 2,
 start_in_insert = true,
 insert_mappings = true,
 persist_size = true,
 direction = "float",
 close_on_exit = true,
 shell = vim.o.shell,
 float_opts = {
  border = "curved",
  winblend = 0,
  highlights = {
   border = "Normal",
   background = "Normal",
  },
 },
})


-----------
----------- Telescope
-----------
vim.opt.rtp:append('/home/sono/.local/share/nvim/lazy/telescope.nvim')
vim.opt.rtp:append('/home/sono/.local/share/nvim/lazy/plenary.nvim')
local actions = require("telescope.actions")
require('telescope').setup{
  defaults = {
    -- Você pode alterar o prompt_prefix e selection_caret aqui
    prompt_prefix = " ",
    selection_caret = " ",

    -- Você pode adicionar mais opções de configuração aqui
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    mappings = {
      i = {
        -- mapeia a tecla <C-x> para abrir o arquivo selecionado em um novo split horizontal
        ["<C-x>"] = actions.select_horizontal,

        -- mapeia a tecla <C-t> para abrir o arquivo selecionado em uma nova aba
        ["<C-t>"] = actions.select_tab,
      },
    },
  },

  pickers = {
    -- Você pode adicionar configurações para pickers específicos aqui
    find_files = {
      theme = "dropdown",
      previewer = false,
    },
  },

  extensions = {
    -- Você pode adicionar configurações para extensões específicas aqui
    fzf = {
      fuzzy = true,                    -- Enable fuzzy search
      override_generic_sorter = false, -- Override the generic sorter
      override_file_sorter = true,     -- Override the file sorter
      case_mode = "smart_case",        -- Set the case mode
    }
  }
}