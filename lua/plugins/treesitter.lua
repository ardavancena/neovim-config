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

--return {
--  "nvim-treesitter/nvim-treesitter",
--  branch = "master",
--  lazy = false,
--  build = ':TSUpdate',
--  config = function()
--      require("nvim-treesitter").setup({
--          ensure_installed = {
--              "lua",
--              "c",
--              "cpp",
--              "vim",
--              "vimdoc",
--              "bash",
--              "python",
--              "javascript",
--              "html",
--              "css",
--              "markdown",
--              "markdown_inline",
--          },
--          highlight = {
--              enable = true,
--          },
--          indent = {
--              enable = true,
--          },
--          auto_install = true,
--      })
--  end,
--}

return {
    "romus204/tree-sitter-manager.nvim",
    dependencies = {},
    config = function()
        require("tree-sitter-manager").setup({
            parser_dir = vim.fn.stdpath("data") .. "/site/parser",
            query_dir = vim.fn.stdpath("data") .. "/site/queries",
            assume_installed = {},
            ensure_installed = { "c", "cpp", "lua", "markdown", "markdown_inline", "go", "html", "css", "rust"},
            border = "rounded",
            auto_install = false,
            noauto_install = {},
            highlight = true,
            nohighlight = {},
            languages = {},
            nerdfont = true,
            use_repo_queries = true,
        })
    end,
    {
        -- kept nvim-treesitter for those queries
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter").setup({
                highlight = {
                    enable = true,
                    -- This will use nvim-treesitter's queries
                },
            })
        end,
    },
}
