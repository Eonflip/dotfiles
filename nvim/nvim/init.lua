-- Ensure Lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load Lazy.nvim
require("lazy").setup({
  -- Example Plugins
  {
    "nvim-tree/nvim-tree.lua", -- File explorer
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Icons for nvim-tree
    config = function()
      require("nvim-tree").setup()
    end
  },
  {
    "nvim-telescope/telescope.nvim", -- Fuzzy finder
    dependencies = { "nvim-lua/plenary.nvim" }
  },
})

vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Relative line numbers
vim.opt.tabstop = 4               -- Tab width is 4 spaces
vim.opt.shiftwidth = 4            -- Indentation uses 4 spaces
vim.opt.expandtab = true          -- Convert tabs to spaces
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
