return {
  'rmagatti/auto-session',
  lazy = false,
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { '<leader>qr', '<cmd>SessionSearch<CR>', desc = 'Session search' },
    { '<leader>qs', '<cmd>SessionSave<CR>', desc = 'Save session' },
    { '<leader>qa', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
  },

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    config = function()
      vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
    end,
    -- The following are already the default values, no need to provide them if these are already the settings you want.
    session_lens = {
      mappings = {
        -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
        delete_session = { 'i', '<C-D>' },
        alternate_session = { 'i', '<C-S>' },
        copy_session = { 'i', '<C-Y>' },
      },

      picker_opts = {
        -- For Telescope, you can set theme options here, see:
        -- https://github.com/nvim-telescope/telescope.nvim/blob/master/doc/telescope.txt#L112
        -- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/themes.lua
        --
        -- border = true,
        -- layout_config = {
        --   width = 0.8, -- Can set width and height as percent of window
        --   height = 0.5,
        -- },

        -- For Snacks, you can set layout options here, see:
        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#%EF%B8%8F-layouts
        --
        -- preset = "dropdown",
        -- preview = false,
        -- layout = {
        --   width = 0.4,
        --   height = 0.4,
        -- },
      },

      -- Telescope only: If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
      load_on_setup = true,
    },
  },
}
