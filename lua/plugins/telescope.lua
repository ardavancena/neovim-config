return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          -- Prevent invalid function values from being passed
          layout_config = {
            width = 0.75,
            height = 0.5,
            prompt_position = "top",
          },
          sorting_strategy = "ascending",
          winblend = 10,
        },
      })

      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
              winblend = 10,
              width = 0.5,
              prompt = "Select one:",
            }),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}

