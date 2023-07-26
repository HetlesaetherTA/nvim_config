local nnoremap = require("configs.keymap").nnoremap
local builtin = require("telescope.builtin")

-- File Explorer (Netrw)
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Jump 1 page {up: Alt+j, down: Alt+k}
nnoremap("<A-j>", "<C-d>zz<CR>")
nnoremap("<A-k>", "<C-u>zz<CR>")

-- Search for file {local: space-p-f, git: CTRL+p, grep: space-p-s}
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Move cursor line {down: J, up: K}
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- IDK 
vim.keymap.set("n", "n", "nzzzv")

-- IDK
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])

-- IDK
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Shift {left: <, right: >}
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- redo bound to shift+u
vim.keymap.set("n", "U", "<C-r>")

nnoremap("<leader>rn", "<cmd>!%<CR>")


-- TODO mark what each keymap do
