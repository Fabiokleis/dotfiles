
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
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
    lualine_b = {'diff', 'diagnostics'},
    lualine_c = {'branch','filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
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
  extensions = {}
}

require("nvim-tree").setup {}
local cmd = vim.cmd
local present, catppuccin = pcall(require, "catppuccin")
if not present then return end

catppuccin.setup {
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	term_colors = true,
	transparent_background = true,
	no_italic = false,
	no_bold = false,
	styles = {
		comments = {},
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
	},
	color_overrides = {
		mocha = {
			base = "#000000",
		},
	},
    native_lsp = {
        enabled = true,
        virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
        },
        underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
        },
    },

	highlight_overrides = {
		mocha = function(C)
			return {
				TabLineSel = { bg = C.pink },
				NvimTreeNormal = { bg = C.none },
				CmpBorder = { fg = C.surface2 },
				Pmenu = { bg = C.none },
				NormalFloat = { bg = C.none },
				TelescopeBorder = { link = "FloatBorder" },
			}
		end,
	},
}
cmd [[colorscheme catppuccin]]
