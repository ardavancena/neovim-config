
return {
  -- GFM Markdown syntax & folding
  {
    "preservim/vim-markdown",
    ft = { "markdown" },
    config = function()
      vim.g.vim_markdown_conceal = 0      -- Do not hide any chars
      vim.g.vim_markdown_folding_disabled = 1  -- Disable folding completely
      vim.g.vim_markdown_math = 1         -- LaTeX math inside markdown
      vim.g.vim_markdown_frontmatter = 1  -- YAML frontmatter
      vim.g.vim_markdown_strikethrough = 1
      -- Optional: highlight headings without folding
      vim.cmd("setlocal foldmethod=manual")
    end,
  },

  -- LaTeX syntax highlighting (for standalone .tex files)
  {
    "lervag/vimtex",
    ft = { "tex" },
    config = function()
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_compiler_latexmk = {
        build_dir = 'build',
        options = { "-silent", "-interaction=nonstopmode" },
      }
      vim.cmd("setlocal foldmethod=expr foldexpr=vimtex#fold#foldexpr()")
    end,
  },
}


-- Your Neovim lazy.nvim configuration
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

--return {
--  "MeanderingProgrammer/markdown.nvim",
--  ft = { "markdown" },
--  dependencies = { "nvim-treesitter/nvim-treesitter" },
--  opts = {
--    latex = { enabled = true }, -- Enable LaTeX math rendering
--    heading = { enabled = true }, -- Pretty headings
--    checkbox = { enabled = true }, -- GitHub-style checkboxes
--    code = { enabled = true }, -- Highlight code blocks
--  },
--  config = function(_, opts)
--    require("render-markdown").setup(opts)
--
--    -- Toggle render with <F5>
--    vim.keymap.set("n", "<leader>mp", function()
--      require("render-markdown").toggle()
--    end, { desc = "Toggle Markdown Render" })
--  end,
--}
--
