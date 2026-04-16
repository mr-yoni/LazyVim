-- bootstrap lazy.nvim, LazyVim and your plugins

-- vim.cmd('let $PATH = "/Users/yonimadar/.nvm/versions/node/v20.15.0/bin:" . $PATH')

require("config.lazy")

vim.schedule(function()
  -- This forces Neovim to respect the background after the UI has settled
  if vim.o.background == "dark" then
    vim.cmd.colorscheme("habamax")
  else
    vim.cmd.colorscheme("habamax")
  end
end)
