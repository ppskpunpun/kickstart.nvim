-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Auto remove trailing spaces before saving file
vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    vim.cmd('lua MiniTrailspace.trim()')
  end
})
