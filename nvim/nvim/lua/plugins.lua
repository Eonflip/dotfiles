{
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Adds file icons
  config = function()
    require("nvim-tree").setup()
  end
}
