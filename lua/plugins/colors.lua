-- colors.lua
return {
  { "folke/tokyonight.nvim", lazy = true },
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "savq/melange-nvim", lazy = true },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "warmer",
      }
      require("onedark").load()
    end,
  },
  { "EdenEast/nightfox.nvim", lazy = true },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  { "loctvl842/monokai-pro.nvim", lazy = true },
  { "shaunsingh/nord.nvim", lazy = true },
  { "marko-cerovac/material.nvim", lazy = true },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = true },
  { "neanias/everforest-nvim", lazy = true },
  { "NTBBloodbath/doom-one.nvim", lazy = true },
  { "Shatur/neovim-ayu", lazy = true },
  { "sainnhe/edge", lazy = true },
  { "ray-x/aurora", lazy = true },
  { "nvimdev/zephyr-nvim", lazy = true },
  { "nyoom-engineering/oxocarbon.nvim", lazy = true },
  { "drewtempelmeyer/palenight.vim", lazy = true },
  { "lunarvim/horizon.nvim", lazy = true },
  { "Mofiqul/vscode.nvim", lazy = true },
  { "romainl/Apprentice" },
  { "mhartington/oceanic-next", name = "OceanicNext", lazy = true },
  { "nanotech/jellybeans.vim", lazy = true },
  { "projekt0n/github-nvim-theme", lazy = true },
  { "Mofiqul/dracula.nvim", lazy = true },
  { "sainnhe/sonokai", lazy = true },
  { "AlexvZyl/nordic.nvim", lazy = true },
  { "tiagovla/tokyodark.nvim", lazy = true },
  { "ribru17/bamboo.nvim", lazy = true },
  { "polirritmico/monokai-nightasty.nvim", lazy = true },
  { "killitar/obscure.nvim", lazy = true },
  { "craftzdog/solarized-osaka.nvim", lazy = true },
  { "Th3Whit3Wolf/one-nvim", lazy = true },
  { "flazz/vim-colorschemes", lazy = true },
  { "shaunsingh/solarized.nvim", lazy = true },
  { "f-person/auto-dark-mode.nvim", lazy = true },
  { "rafamadriz/neon", lazy = true },
  { "adisen99/apprentice.nvim", lazy = true },          -- correct apprentice.nvim
  { "lewpoly/sherbet.nvim", lazy = true },               -- confirmed sherbet.nvim repo
  { "altercation/vim-colors-solarized", lazy = true },  -- solarized
  { "Th3Whit3Wolf/space-nvim", lazy = true },           -- optional, only if repo exists


  { "stevearc/dressing.nvim", event = "VeryLazy" }, -- optional picker UI
}
