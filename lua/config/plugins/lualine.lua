return {
  'nvim-lualine/lualine.nvim',
  event = { 'VeryLazy' },
  config = function()
    local lualine = require('lualine')
    lualine.setup {
      options = {
        icons_enabled = true,
        -- theme = 'dracula',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          { 'branch', icon = '' },
          {
            'diff',
            -- fmt = function(res) return res .. ' ' end,
            -- padding = 0
          },
          {
            'diagnostics',
            -- fmt = function(res) return res .. ' ' end,
            -- padding = 0
          }
        },
        lualine_c = { 'filename' },
        -- lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_x = { 'filetype' },
        lualine_y = { { 'progress', padding = 0 } },
        -- lualine_z = {'location'}
        lualine_z = { }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  end
}
