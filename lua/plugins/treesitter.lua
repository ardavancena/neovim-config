--return {
--    "nvim-treesitter/nvim-treesitter",
--    branch = "master",
--    build = ":TSUpdate",
--    config = function()
--      require("nvim-treesitter.configs").setup({
--        ensure_installed = {
--          "lua",
--          "vim",
--          "vimdoc",
--          "bash",
--          "python",
--          "javascript",
--          "html",
--          "css",
--          -- REMOVED: "markdown", "markdown_inline" - these cause the error
--        },
--        highlight = {
--          enable = true,
--          -- DISABLE treesitter highlighting for markdown files
--          disable = function(lang, buf)
--            -- Check if it's a markdown file
--            local filetype = vim.bo[buf].filetype
--            if filetype == "markdown" or filetype == "markdown_inline" then
--              return true
--            end
--            -- Also disable by language name
--            if lang == "markdown" or lang == "markdown_inline" then
--              return true
--            end
--            return false
--          end,
--        },
--        indent = {
--          enable = true,
--        },
--        auto_install = true,
--      })
--    end,
--}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ':TSUpdate',
  config = function()
      require("nvim-treesitter").setup({
          ensure_installed = {
              "lua",
              "c",
              "cpp",
              "vim",
              "vimdoc",
              "bash",
              "python",
              "javascript",
              "html",
              "css"
          },
          highlight = {
              enable = true,
          },
          indent = {
              enable = true,
          },
          auto_install = true,
      })
  end,
}
