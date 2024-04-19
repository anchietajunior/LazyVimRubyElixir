-- return {
--   "ellisonleao/gruvbox.nvim",
--   lazy = true,
--   priority = 1000,
--   opts = function()
--     return {
--       transparent = true,
--     }
--   end,
-- }

-- return {
--   "UtkarshVerma/molokai.nvim",
-- }

return {
  "sainnhe/sonokai",
  config = function()
    vim.g.sonokai_transparent_background = "1"
    vim.g.sonokai_enable_italic = "1"
    vim.g.sonokai_style = "andromeda"
    vim.cmd.colorscheme("sonokai")
  end,
}

-- return {
--   "EdenEast/nightfox.nvim",
-- }

-- return {
--   "tanvirtin/monokai.nvim",
-- }
