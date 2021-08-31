--[[
LunarVim config by @jonaskac

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]

-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "spacegray"
lvim.builtin.compe.autocomplete = true
lvim.debug = true

-- keymappings

-- misc
vim.opt.relativenumber = true

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile


-- dashboard
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {"typescript", "bash", "css", "html", "yaml", "dockerfile", "json", "graphql"}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.lsp.diagnostics.virtual_text = true

-- LSP
lvim.lang.typescript.formatters = {{ exe = "prettier" }}
lvim.lang.typescript.linters = {{ exe = "eslint" }}
