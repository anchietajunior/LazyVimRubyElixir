return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "left",
        width = 25,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
      },
    })
  end,
}
