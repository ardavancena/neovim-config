--return {
--  -- GFM Markdown syntax & folding
--  {
--    "preservim/vim-markdown",
--    ft = { "markdown" },
--    config = function()
--      vim.g.vim_markdown_conceal = 0      -- Do not hide any chars
--      vim.g.vim_markdown_folding_disabled = 1  -- Disable folding completely
--      vim.g.vim_markdown_math = 1         -- LaTeX math inside markdown
--      vim.g.vim_markdown_frontmatter = 1  -- YAML frontmatter
--      vim.g.vim_markdown_strikethrough = 1
--      -- Optional: highlight headings without folding
--      vim.cmd("setlocal foldmethod=manual")
--    end,
--  },
--}
--
--  -- LaTeX syntax highlighting (for standalone .tex files)
--  {
--    "lervag/vimtex",
--    ft = { "tex" },
--    config = function()
--      vim.g.vimtex_compiler_method = 'latexmk'
--      vim.g.vimtex_compiler_latexmk = {
--        build_dir = 'build',
--        options = { "-silent", "-interaction=nonstopmode" },
--      }
--      vim.cmd("setlocal foldmethod=expr foldexpr=vimtex#fold#foldexpr()")
--    end,
--  },
--}

---- Your Neovim lazy.nvim configuration
--return {
--  -- GFM and Markdown Syntax Highlighting and Features
--  {
--    "preservim/vim-markdown",
--    ft = { "markdown" },           -- Only load for markdown files
--    config = function()
--      -- Enable syntax folding for markdown
--      vim.cmd("setlocal foldmethod=marker")
--      -- Enable smart GFM tables and checkboxes
--      vim.g.markdown_folding = 1
--    end
--  },
--
--  -- LaTeX Syntax highlighting
--  {
--    "lervag/vimtex",   -- LaTeX plugin for syntax highlighting, folding, and more
--    ft = { "tex" },     -- Load for .tex files
--    config = function()
--      -- LaTeX specific settings
--      vim.g.vimtex_compiler_method = 'latexmk'
--      vim.g.vimtex_compiler_latexmk = {
--        build_dir = 'build',    -- LaTeX output directory
--        options = { "-silent", "-interaction=nonstopmode" } -- Don't stop on errors
--      }
--      -- Enable folding for LaTeX files
--      vim.cmd("setlocal foldmethod=expr foldexpr=vimtex#fold#foldexpr()")
--    end
--  },
--
--  -- Bash Syntax highlighting inside Markdown,
--  {
--    "udalov/kotlin-vim", -- Plugin for bash highlighting inside markdown (and other shell scripts)
--    ft = { "markdown", "sh" },
--    config = function()
--      -- Enable shell syntax highlighting
--      vim.cmd("setlocal filetype=sh")
--    end
--  },
--
--}

-- return {
--     "MeanderingProgrammer/markdown.nvim",
--   ft = { "markdown" },  -- Only load for markdown files
--     dependencies = { "nvim-treesitter/nvim-treesitter" },
--     opts = {
--         -- Disable the plugin entirely in non-markdown buffers
--         enabled = function(bufnr)
--             local ft = vim.bo[bufnr].filetype
--             return ft == "markdown"
--         end,
--         
--         -- Explicitly exclude C++ filetypes
--         excluded_filetypes = { "c", "cpp", "cxx", "cc", "h", "hpp" },
--         
--         -- Your render options
--         latex = { enabled = true },
--         heading = { enabled = true },
--         checkbox = {
--             enabled = true,
--             unchecked = { icon = "☐", highlight = "@markup.list.unchecked" },
--             checked = { icon = "☑", highlight = "@markdown_check_done" },
--         },
--         code = { enabled = true },
--     },
--     config = function(_, opts)
--         require("render-markdown").setup(opts)
--         
--         vim.keymap.set("n", "<leader>mp", function()
--             require("render-markdown").toggle()
--         end, { desc = "Toggle Markdown Render" })
--     end,
-- }

-- return {
--     'MeanderingProgrammer/render-markdown.nvim',
--     dependencies = { 
--         'nvim-treesitter/nvim-treesitter', 
--         'nvim-mini/mini.nvim' 
--     },
--     opts = {
--         enabled = false,  -- Don't auto-render
--     },
--     config = function(_, opts)
--         require("render-markdown").setup(opts)
--         vim.keymap.set("n", "<leader>mp", function()
--             -- Toggle with error handling
--             local ok, err = pcall(require("render-markdown").toggle)
--             if not ok then
--                 vim.notify('Markdown render error: ' .. err, vim.log.levels.ERROR)
--             end
--         end, { desc = "Toggle Markdown Render" })
--     end,
-- }

--return {
--    "toppair/peek.nvim",
--    event = { "VeryLazy" },
--    build = "deno task --quiet build:fast",
--    config = function()
--        require("peek").setup({
--            -- Optional: Configure Peek settings
--            -- theme = 'dark',
--            -- auto_open = false,
--        })
--        
--        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
--        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
--        
--        -- Optional keymaps
--        vim.keymap.set("n", "<leader>po", "<cmd>PeekOpen<CR>", { desc = "Open Peek preview" })
--        vim.keymap.set("n", "<leader>pc", "<cmd>PeekClose<CR>", { desc = "Close Peek preview" })
--    end,
--}

--return {
--  "iamcco/markdown-preview.nvim",
--  build = "cd app && npm install",
--  ft = { "markdown" },
--  config = function()
--    vim.g.mkdp_auto_start = 0
--    vim.g.mkdp_auto_close = 1
--    vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Preview Markdown" })
--  end,
--}

-- This fucker took DAYS to fix!!
return {
     "MeanderingProgrammer/render-markdown.nvim",
     dependencies = { 'romus204/tree-sitter-manager.nvim', 'nvim-mini/mini.nvim' },
     config = function() 
         require("render-markdown").setup({
             completions = { lsp = { enabled = true } },
                 vim.keymap.set("n", "<leader>mp", function()
                     require("render-markdown").toggle()
                 end, { desc = "Toggle Markdown Render" })
         })
     end,
}
