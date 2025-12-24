-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("n", "<Up>", "<Nop>")
map("n", "<Down>", "<Nop>")
map("n", "<Right>", "<Nop>")
map("n", "<Left>", "<Nop>")

require("telescope").setup({
  -- .. other settings
  extensions = {
    file_browser = {
      -- hijack_netrw = true,
      theme = "ivy",
      mappings = {
        i = {
          ["<C-y>"] = function()
            local entry = require("telescope.actions.state").get_selected_entry()
            local cb_opts = vim.opt.clipboard:get()
            if vim.tbl_contains(cb_opts, "unnamed") then
              vim.fn.setreg("*", entry.path)
            end
            if vim.tbl_contains(cb_opts, "unnamedplus") then
              vim.fn.setreg("+", entry.path)
            end
            vim.fn.setreg("", entry.path)
          end,
        },
      },
    },
  },
})
