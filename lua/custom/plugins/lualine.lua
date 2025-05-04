return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                theme = "catppuccin",
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                icons_enabled = true,
                disabled_filetypes = { 'neo-tree' },
            },
            sections = {
                lualine_a = {{'mode', icon='󰗶', separator={left=''}}},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'buffers'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {{'location', separator={right=''}}}
            },
        })
    end
}
