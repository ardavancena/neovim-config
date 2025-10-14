-- just get lazy.nvim real quick
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) 

local opts = {}

require("vim-options")
require("lazy").setup("plugins")

-- colorscheme (safe load)
vim.cmd.colorscheme("palenight")

vim.cmd.colorscheme()
