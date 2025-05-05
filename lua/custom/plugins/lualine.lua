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
                disabled_filetypes = {
                   winbar = { 'neo-tree' }
                },
                globalstatus = true,
            },
            sections = {
                lualine_a = {{'mode', icon='󰗶', separator={left=''}}},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'buffers'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {{'location', separator={right=''}}}
            },
            inactive_winbar = {
                lualine_z = {{
                    'filename', 'filetype', 'filesize',
                    cond = function()
                        return vim.bo.buftype ~= 'terminal'
                    end
                }}
            }
        })
        
    end
}
