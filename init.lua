local g = vim.g
local configs = "configs"

require(configs)
vim.lsp.client_is_stopped()

g.python3_host_prog = "C:/Python311/python.exe"

vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

vim.cmd("colorscheme tokyonight")
