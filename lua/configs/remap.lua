local nnoremap = require("configs.keymap").nnoremap
local builtin = require("telescope.builtin")

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<A-j>", "<C-d>zz<CR>")
nnoremap("<A-k>", "<C-u>zz<CR>")
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
