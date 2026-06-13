--return {
--    {
--        "nvim-treesitter/nvim-treesitter",
--        build = ":TSUpdate",
--        config = function()
--            require("nvim-treesitter.configs").setup({
--                ensure_installed = { "lua", "vim", "vimdoc", "bash", "python", "javascript" },
--                highlight = { enable = true },
--                indent = { enable = true },
--            })
--        end,
--    },
--}

--return {
--  {
--    "nvim-treesitter/nvim-treesitter",
--    version = false, -- یا می‌توانید از tag = "v0.9.2" استفاده کنید
--    build = ":TSUpdate",
--    config = function()
--      local configs = require("nvim-treesitter.configs")
--
--      configs.setup({
--        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
--        sync_install = false,
--        highlight = { enable = true },
--        indent = { enable = true },
--      })
--    end,
--  },
--}


return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "bash",
          "python",
          "javascript",
          "html",
          "css",
        },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },
}
