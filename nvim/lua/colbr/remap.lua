-- set leader as spacebar, e.g. <leader>p = spacebar followed by p
vim.g.mapleader = " "

-- edit

vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line to system clipboard

vim.keymap.set('n', '<leader>pp', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>PP', '"+P')  -- paste before cursor

vim.keymap.set("n", "J", "mzJ`z") -- join lines without spaces

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move line up

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- deletes without affecting the register

-- selection / find

vim.keymap.set("n", "n", "nzzzv") -- next search result, center cursor
vim.keymap.set("n", "N", "Nzzzv") -- previous search result, center cursor

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- find replace in file

-- navigate

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- down half screen, center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- up half screen, center cursor

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- next item in quickfix list
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- previous item in quickfix list

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- next item in location list
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- previous item in location list

-- preferences

vim.keymap.set("n", "Q", "<nop>") -- disabled Q in normal mode, I hate Ex mode

-- formatting / LSP

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- format buffer using LSP
vim.keymap.set("n", "<leader>p", ":Prettier<CR>", { noremap = true }) -- run Prettier on buffer

-- other

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/colbr/packer.lua<CR>"); -- edit packer config

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end) -- reload nvim config

