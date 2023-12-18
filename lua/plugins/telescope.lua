return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    "nvim-telescope/telescope-file-browser.nvim",
  },
  keys = {
    {
      "<C-f>",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Find Plugin File",
    },
    {
      ";f",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          no_ignore = false,
          hidden = true,
        })
      end,
      desc = "Lists files in your current working directory, respects .gitignore",
    },
    {
      "<C-g>",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep()
      end,
      desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
    },
    {
      "<C-b>",
      function()
        local builtin = require("telescope.builtin")
        builtin.buffers()
      end,
      desc = "Lists open buffers",
    },
    {
      ";e",
      function()
        local builtin = require("telescope.builtin")
        builtin.diagnostics()
      end,
      desc = "Lists Diagnostics for all open buffers or a specific buffer",
    },
  },
}
