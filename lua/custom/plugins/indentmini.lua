
return {
  'nvimdev/indentmini.nvim',
  config = function()
    require("indentmini").setup() -- use default config
    -- Colors are applied automatically based on user-defined highlight groups.
    -- There is no default value.
    vim.cmd.highlight('IndentLine guifg=#45475a')
    -- Current indent line highlight
    vim.cmd.highlight('IndentLineCurrent guifg=#89b4fa')
  end
}
