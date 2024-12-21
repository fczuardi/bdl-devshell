-- based on https://github.com/fczuardi/nvim-stuff/tree/main

basic = function()
  -- spaces for identing
  vim.opt.expandtab = true
  -- display trailing spaces, nbsp and tab chars
  vim.opt.list = true
  -- default tab size
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  -- YES Tim Pope! even for Markdown!
  -- see https://www.reddit.com/r/neovim/comments/z2lhyz/comment/ixjb7je/ and :help ft-markdown-plugin
  vim.g.markdown_recommended_style = 0
  -- show color column
  vim.opt.colorcolumn = { 100 }
  -- show line numbers
  vim.opt.number = true
  -- Set <space> as the leader key
  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '
end

keymaps = function()
  basic_keymaps = function()
    -- leader w = [w]rite
    vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
  end
  harpoon_keymaps = function()
    local h = require("harpoon")
    h:setup()
    vim.keymap.set("n", "<leader>a", function() h:list():add() end)
    vim.keymap.set("n", "<leader><leader>", function() h.ui:toggle_quick_menu(h:list()) end)
    vim.keymap.set("n", "<leader>j", function() h:list():select(1) end)
    vim.keymap.set("n", "<leader>k", function() h:list():select(2) end)
    vim.keymap.set("n", "<leader>l", function() h:list():select(3) end)
    vim.keymap.set("n", "<leader>m", function() h:list():select(4) end)
    vim.keymap.set("n", "<leader>,", function() h:list():select(5) end)
    vim.keymap.set("n", "<leader>.", function() h:list():select(6) end)
  end,
  basic_keymaps()
  harpoon_keymaps()
end

plugins = function()
  -- bootstrap the Lazy plugin manager
  require('fcz.plugin_manager')
  -- 3rd party plugins
  local plugins = {
    -- quick file navigation
    { "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" }, },
  }
  -- Setup lazy.nvim
  require("lazy").setup({ spec = plugins, install = {}, checker = { enabled = true }, })
end

basic()
plugins()
keymaps()

