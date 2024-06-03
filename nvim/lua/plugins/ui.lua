return {
  -- floating winbar
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    enabled = false,
    config = function()
      local colors = require("tokyonight.colors").setup()
      require("incline").setup({
        window = {
          padding = 0,
          margin = { horizontal = 0 },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then
            filename = "[No Name]"
          end
          local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
          local modified = vim.bo[props.buf].modified
          return {
            ft_icon
                and { " ", ft_icon, " ", guibg = ft_color, guifg = require("incline.helpers").contrast_color(ft_color) }
              or "",
            " ",
            { filename, gui = modified and "bold,italic" or "bold" },
            " ",

            guibg = "#44406e",
          }
        end,
      })
    end,
  },

  "folke/twilight.nvim",
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "catppuccin",
        section_separators = { left = "", right = "" },
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
      },
      --       local default_sep_icons = {
      --   default = { left = "", right = "" },
      --   round = { left = "", right = "" },
      --   block = { left = "█", right = "█" },
      --   arrow = { left = "", right = "" },
      -- }
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
  --logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
  ██╗    ██╗ █████╗ ██████╗ ███╗   ███╗██████╗ ███████╗██╗   ██╗
  ██║    ██║██╔══██╗██╔══██╗████╗ ████║██╔══██╗██╔════╝██║   ██║
  ██║ █╗ ██║███████║██████╔╝██╔████╔██║██║  ██║█████╗  ██║   ██║
  ██║███╗██║██╔══██║██╔══██╗██║╚██╔╝██║██║  ██║██╔══╝  ╚██╗ ██╔╝
  ╚███╔███╔╝██║  ██║██║  ██║██║ ╚═╝ ██║██████╔╝███████╗ ╚████╔╝ 
   ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝ ╚══════╝  ╚═══╝  
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
