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

require("vim-options")
require("lazy").setup("plugins")

-- colorscheme (safe load)
vim.cmd.colorscheme("palenight")

vim.cmd.colorscheme()

vim.env.ASM_LSP_CONFIG = vim.fn.expand('~/asm-lsp.toml')

vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = "*.sh",
  callback = function()
    local bufnr = vim.api.nvim_get_current_buf()
    local lines = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)
    if #lines > 0 and lines[1] and lines[1]:match("^bin/") then
      -- Fix the shebang
      vim.api.nvim_buf_set_lines(bufnr, 0, 1, false, {"#!/" .. lines[1]})
      vim.notify("Fixed missing #! in shebang", vim.log.levels.INFO)
    end
  end,
})
