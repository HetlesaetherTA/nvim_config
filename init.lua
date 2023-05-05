local g = vim.g

require("constants")
require(configs)
vim.lsp.client_is_stopped()

g.python3_host_prog = "C:/Users/ThAH/AppData/Local/Programs/Python/Python311/python"

vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

vim.cmd("colorscheme tokyonight")
