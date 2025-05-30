return {
  ---[[
  {
    'lewis6991/gitsigns.nvim',
    lazy = true,
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local gitsigns = require('gitsigns')
      gitsigns.setup({
        signcolumn = false, -- Toggle with `:Gitsigns toggle_signs`
        numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = {
          interval = 1000,
          follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false,
        },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000, -- Disable if file is longer than this (in lines)
        preview_config = {
          -- Options passed to nvim_open_win
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 1,
        },
      })
    end
  },
  --]]
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'sindrets/diffview.nvim',
        config = function()
          require('diffview').setup({
            file_panel = { win_config = { width = 25, } },
            file_history_panel = { win_config = { height = 12, } },
          })
        end
      },
    },
    keys = {
      { '<leader>ng', '<CMD>Neogit<CR>', desc = 'Open neogit' },
      { '<leader>dfo', '<CMD>DiffviewOpen<CR>', desc = 'Open diffview' },
      { '<leader>dfc', '<CMD>DiffviewClose<CR>', desc = 'Close diffview' },
      -- { '<leader>dh', '<CMD>DiffviewFileHistory<CR>', desc = 'Open git history' },
    },
    cmd = { 'Neogit', 'NeogitCommit', 'DiffviewOpen' },
    config = function()
      require('neogit').setup({
        disable_hint = true,
        commit_view = {
          kind = 'tab',
        },
        integrations = {
          diffview = true,
          mini_pick = true
        },
        status = {
          recent_commit_count = 25,
        },
      })
    end
  },
}
