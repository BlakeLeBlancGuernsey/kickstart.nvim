-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/tokyonight.nvim',
  },

  {
    'mcchrish/zenbones.nvim',
    dependencies = { 'rktjmp/lush.nvim' },
  },

  -- {
  --   'robertmeta/nofrils',
  -- },

  {
    'rktjmp/lush.nvim',
  },

  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end,
  },

  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup {
        auto_load = true,
        close_on_bdelete = true,
        syntax = true,
        theme = 'light',
        update_on_change = true,
        app = 'webview',
        filetype = { 'markdown' },
        throttle_at = 20000,
        throttle_time = 'auto',
      }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },

  {
    'markonm/traces.vim',
  },

  {
    'wellle/targets.vim',
  },

  {
    'windwp/nvim-autopairs',
  },

  {
    'mhinz/vim-startify',
  },

  {
    'echasnovski/mini.files',
    version = '*',
    config = function()
      require('mini.files').setup {
        opts = {
          vim.keymap.set('n', '-', '<CMD>lua MiniFiles.open()<CR>'),
        },
        -- Customization of shown content
        content = {
          -- Predicate for which file system entries to show
          filter = nil,
          -- What prefix to show to the left of file system entry
          prefix = nil,
          -- In which order to show file system entries
          sort = nil,
        },

        -- Module mappings created only inside explorer.
        -- Use `''` (empty string) to not create one.
        mappings = {
          close = 'q',
          go_in = 'l',
          go_in_plus = 'L',
          -- go_out      = 'h',
          go_out = '-',
          go_out_plus = 'H',
          reset = '<BS>',
          reveal_cwd = '@',
          show_help = 'g?',
          synchronize = '=',
          trim_left = '<',
          trim_right = '>',
        },

        -- General options
        options = {
          -- Whether to delete permanently or move into module-specific trash
          permanent_delete = true,
          -- Whether to use for editing directories
          use_as_default_explorer = true,
        },

        -- Customization of explorer windows
        windows = {
          -- Maximum number of windows to show side by side
          max_number = math.huge,
          -- Whether to show preview of file/directory under cursor
          preview = true,
          -- Width of focused window
          width_focus = 50,
          -- Width of non-focused window
          width_nofocus = 15,
          -- Width of preview window
          width_preview = 50,
        },
      }
    end,
  },

  {
    'norcalli/nvim-colorizer.lua',
  },

  {
    'junegunn/fzf',
    dir = '~/.fzf',
    build = './install --all',
  },

  {
    'junegunn/fzf.vim',
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,

    -- config = function()
    --   require('toggleterm').setup{(
    --     -- defaults
    --   )}
    -- end,
  },
}
