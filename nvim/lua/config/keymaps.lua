-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- quick save
map("n", "<C-s>", ":w<Return>")

-- reload
map("n", "<F5>", ":source%<Return>", { silent = true })

-- redo
map("n", "r", ":redo<CR>", opts)

-- movement key
map({ "n", "v" }, "j", "jzz")
map({ "n", "v" }, "k", "kzz")

map({ "n", "v" }, "H", "5h")
map({ "n", "v" }, "J", "5jzz")
map({ "n", "v" }, "K", "5kzz")
map({ "n", "v" }, "L", "5l")

-- do not yank with x
map({ "n", "v" }, "x", '"_x')

-- delete line
map("n", "<leader>d", "dd")

-- increment/ decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- delete a word backwards
map("n", "dw", 'vb"_d')

-- select all
map("n", "<C-a>", "gg<S-v>G")
map("i", "<C-a>", "<Esc>gg<S-v>G")

-- jumplist
map("n", "<C-m>", "<C-i>", opts)

-- tab control
map("n", "te", ":tabedit<Return>", opts)
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<s-tab>", ":tabprev<Return>", opts)
-- buffer control
map("n", "<tab>", ":bnext<Return>", opts)
map("n", "<s-tab>", ":bprev<Return>", opts)

-- split window
map("n", "ss", ":split<Return><C-w>w", opts)
map("n", "sv", ":vsplit<Return><C-w>w", opts)

-- move window
map("", "sh", "<C-w>h")
map("", "sj", "<C-w>j")
map("", "sk", "<C-w>k")
map("", "sl", "<C-w>l")

-- resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

--buffer
map("n", "bd", ":bd<Return>", opts)

-- diagnostic
map("n", "<C-d>", function()
  vim.diagnostic.goto_next()
end, opts)

-- quick quit
map("n", "<C-q>", ":q<Return>", opts)

-- Wrap selected text in single quotes

map("n", "M", vim.lsp.buf.hover, opts)

vim.keymap.del("n", "<c-/>")
map("n", "<C-/>", ":ToggleTerm name=Terminal<Return>", opts)
