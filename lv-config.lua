--[[
LunarVim config by @jonaskac 

O is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
lvim.format_on_save = true
lvim.colorscheme = "spacegray"
lvim.auto_close_tree = 0
lvim.wrap_lines = false
lvim.timeoutlen = 100
lvim.leader_key = " "
lvim.ignore_case = true
lvim.smart_case = true
vim.opt.relativenumber = true

-- TODO User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0


-- dashboard
-- O.dashboard.custom_header = {""}
-- O.dashboard.footer = {""}

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {"typescript", "bash", "css", "html", "yaml", "dockerfile", "json", "graphql"}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- lua
-- lvim.lang.lua.autoformat = true
-- lvim.lang.lua.formatter = 'lua-format'

-- python
-- O.python.linter = 'flake8'
-- lvim.lang.python.isort = true
-- lvim.lang.python.diagnostics.virtual_text = true
-- lvim.lang.python.analysis.use_library_code_types = true

-- javascript
-- O.lang.tsserver.formatter.exe = "prettier" -- This requires `npm i -g prettier`, this will be removed moving forward in LunarVim
-- lvim.lang.tsserver.linter = "eslint"
-- lvim.lang.tsserver.autoformat = true

-- Additional Plugins
-- O.user_plugins = {
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- O.user_autocommands = {{ "BufWinEnter", "*", "echo \"hi again\""}}

-- Additional Leader bindings for WhichKey
-- O.user_which_key = {
--   A = {
--     name = "+Custom Leader Keys",
--     a = { "<cmd>echo 'first custom command'<cr>", "Description for a" },
--     b = { "<cmd>echo 'second custom command'<cr>", "Description for b" },
--   },
-- }
