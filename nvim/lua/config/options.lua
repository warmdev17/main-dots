-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- undercurl
vim.cmd([[let&t_Cs = "\e[4:3m]"]])
vim.cmd([[let&t_Ce = "\e[4:0m]"]])

vim.o.relativenumber = true
vim.o.showmode = true
vim.o.cmdheight = 10
vim.o.shell = "/bin/fish"
vim.o.cursorline = true
vim.o.linespace = 200
vim.o.clipboard = "unnamedplus"

-- Define the SetBackgroundColor function globally
_G.SetBackgroundColor = function()
  local hour = tonumber(os.date("%H"))
  if hour >= 6 and hour < 18 then
    vim.opt.background = "dark"
  else
    vim.opt.background = "dark"
  end
end

-- Automatically set background color when Neovim starts
vim.cmd("autocmd VimEnter * lua SetBackgroundColor()")

-- Automatically set background color every hour
vim.cmd("autocmd CursorHold,CursorHoldI * lua SetBackgroundColor()")
