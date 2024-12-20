return {
  'hrsh7th/nvim-cmp',
  lazy = true,
  event = { 'InsertEnter' },
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')
    -- local kind_icons = {
    --   Text = "󰉿",
    --   Method = "󰆧",
    --   Function = "󰊕",
    --   Constructor = "",
    --   Field = "󰜢",
    --   Variable = "󰀫",
    --   Class = "󰠱",
    --   Interface = "",
    --   Module = "",
    --   Property = "󰜢",
    --   Unit = "󰑭",
    --   Value = "󰎠",
    --   Enum = "",
    --   Keyword = "󰌋",
    --   Snippet = "",
    --   Color = "󰏘",
    --   File = "󰈙",
    --   Reference = "󰈇",
    --   Folder = "󰉋",
    --   EnumMember = "",
    --   Constant = "󰏿",
    --   Struct = "󰙅",
    --   Event = "",
    --   Operator = "󰆕",
    --   TypeParameter = "",
    -- }

    cmp.setup({
      window = {
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
        { name = 'buffer' },
        { name = 'path' },
      }),
      confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      },
      view = {
      },
      formatting = {
      --   format = function(entry, vim_item)
      --     -- Kind icons
      --     vim_item.kind = string.format('%s', kind_icons[vim_item.kind]) -- This concatenates the icons
      --     -- Source
      --     vim_item.menu = ({
      --       -- buffer = '[Buffer]',
      --       -- nvim_lsp = '[LSP]',
      --       -- luasnip = '[LuaSnip]',
      --       -- nvim_lua = '[Lua]',
      --       -- latex_symbols = '[LaTeX]',
      --     })[entry.source.name]
      --     return vim_item
      --   end

        format = lspkind.cmp_format({
          mode = 'symbol',
          maxwidth = {
            menu = 35,
            abbr = 35,
          },
          ellipsis_char = '...',
          show_labelDetails = true,
          -- before = function(entry, vim_item)
          --   return vim_item
          -- end
        })
      },
    })

    -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
    -- Set configuration for specific filetype.
    --[[ cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'git' },
      }, {
        { name = 'buffer' },
      })
    })
    require('cmp_git').setup() ]]-- 

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
      matching = { disallow_symbol_nonprefix_matching = false }
    })

  end
}
