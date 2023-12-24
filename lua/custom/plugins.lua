local plugins = {
  -- [[Color scheme]]
  {
    "folke/tokyonight.nvim",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      require("custom.configs.themes.tokyonight")
    end,
  },

  -- [[UI]]
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "folke/trouble.nvim",
    event = {"BufWinEnter"},
    config = function ()
      require("custom.configs.trouble")
    end
  },
  {
    'mvllow/modes.nvim',
    event = {"BufWinEnter"},
    config = function()
      require("custom.configs.modes")
    end
  },
  {
    'edluffy/specs.nvim',
    event = {"BufWinEnter"},
    config = function()
      require("custom.configs.specs")
    end
  },
  -- [[Jump arround]]
  {
    'phaazon/hop.nvim',
    event = {"BufWinEnter"},
    config = function()
      require("custom.configs.hop")
    end
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },

  {
  "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = {"BufWinEnter"},
    opts = function ()
      require("custom.configs.todo_comments")
    end
    -- config = function ()
    --   require("custom.configs.todo_comments")
    -- end
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          height = 0.95,
          prompt_position = "bottom",
          vertical = {
            mirror = true,
            preview_cutoff = 0,
          },
        },
      },
    },
  },

  {
    "chentoast/marks.nvim",
  },

  {
    "folke/neodev.nvim",
    opts = {},
  },

  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.nvim_lsp")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "gopls",
        "clangd",
      }
    }
  },

  -- [[Rust]]
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      require("custom.configs.rust_tools")
    end
  },

  -- [[Golang]]
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui"
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
  },

  -- [[something cool]]
  {
    "anuvyklack/hydra.nvim",
  },
}

return plugins
