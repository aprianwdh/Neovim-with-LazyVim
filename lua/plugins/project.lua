return {
  {
    "ahmedkhalf/project.nvim",
    -- Tambahkan baris dependencies di bawah ini:
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {
      manual_mode = false,
      detection_methods = { "pattern", "lsp" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
    },
    config = function(_, opts)
      require("project_nvim").setup(opts)
      
      -- Menggunakan pcall agar aman jika telescope mengalami masalah
      local ok, telescope = pcall(require, "telescope")
      if ok then
        telescope.load_extension("projects")
      end
    end,
  },
}
