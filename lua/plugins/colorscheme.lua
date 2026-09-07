return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
      -- TAMBAHKAN INTEGRASI DI BAWAH INI
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true, -- Jika Anda pakai Nvim-tree
        neo_tree = true, -- Jika Anda pakai Neo-tree (bawaan LazyVim)
        telescope = {
          enabled = true,
          -- flavour = "mocha",
        },
        which_key = true,
        snacks = true, -- WAJIB agar dashboard snacks.nvim ikut ditema
      },
      custom_highlights = function(colors)
        return {
          -- Mengatur aksen utama ke lavender
          CursorLineNr = { fg = colors.lavender, bold = true },
          Visual = { bg = colors.surface1, fg = colors.lavender },
          MatchParen = { fg = colors.lavender, bold = true },

          -- TAMBAHKAN HIGHLIGHT UNTUK FOLDER DAN IKON DI SINI
          -- Mewarnai nama folder yang terbuka/tertutup dengan warna Lavender
          NvimTreeFolderName = { fg = colors.lavender },
          NvimTreeOpenedFolderName = { fg = colors.lavender, bold = true },
          NeoTreeFolderName = { fg = colors.lavender },
          NeoTreeOpenedFolderName = { fg = colors.lavender, bold = true },

          -- Mewarnai ikon folder agar selaras
          NvimTreeFolderIcon = { fg = colors.lavender },
          NeoTreeFolderIcon = { fg = colors.lavender },

          -- Mengganti aksen dashboard (snacks.nvim) yang defaultnya blue/peach jadi lavender
          SnacksDashboardHeader = { fg = colors.lavender },
          SnacksDashboardTitle = { fg = colors.lavender, bold = true },
          SnacksDashboardIcon = { fg = colors.lavender },
          SnacksDashboardDesc = { fg = colors.text },
          SnacksDashboardKey = { fg = colors.lavender, bold = true },
          SnacksDashboardFooter = { fg = colors.lavender, italic = true },

          -- Kalau masih pakai alpha-nvim (bukan snacks), samakan juga grup ini
          AlphaHeader = { fg = colors.lavender },
          AlphaButtons = { fg = colors.lavender },
          AlphaShortcut = { fg = colors.lavender, bold = true },
          AlphaFooter = { fg = colors.lavender, italic = true },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
