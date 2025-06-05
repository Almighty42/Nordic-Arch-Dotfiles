return {
  {
    'olimorris/codecompanion.nvim', -- The KING of AI programming
    dependencies = {},
    opts = {
      adapters = {
        deepseek = function()
          return require('codecompanion.adapters').extend('deepseek', {
            env = {
              api_key = 'sk-4e10194a6b8f4d8abd55b529d1ab5379',
            },
          })
        end,
        gemini = function()
          return require('codecompanion.adapters').extend('gemini', {
            env = {
              api_key = 'AIzaSyD8f8ycsBBw-NItSMFy6t5NFLv4xPB8WWU',
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'gemini',
        },
        inline = {
          adapter = 'gemini',
        },
        cmd = {
          adapter = 'gemini',
        },
      },
      display = {
        action_palette = {
          provider = 'default',
        },
        chat = {
          -- show_references = true,
          -- show_header_separator = false,
          -- show_settings = false,
        },
        diff = {
          provider = 'mini_diff',
        },
      },
      opts = {
        log_level = 'DEBUG',
      },
    },
    keys = {
      { '<leader>ch', '<cmd>CodeCompanionChat<cr>', desc = 'Open Gemini chat' },
    },
    init = function()
      vim.cmd [[cab cc CodeCompanion]]
      -- require('legendary').keymaps {
      --   {
      --     itemgroup = 'CodeCompanion',
      --     icon = '',
      --     description = 'Use the power of AI...',
      --     keymaps = {
      --       {
      --         '<C-a>',
      --         '<cmd>CodeCompanionActions<CR>',
      --         description = 'Open the action palette',
      --         mode = { 'n', 'v' },
      --       },
      --       {
      --         '<LocalLeader>a',
      --         '<cmd>CodeCompanionChat Toggle<CR>',
      --         description = 'Toggle a chat buffer',
      --         mode = { 'n', 'v' },
      --       },
      --       {
      --         'ga',
      --         '<cmd>CodeCompanionChat Add<CR>',
      --         description = 'Add selected text to a chat buffer',
      --         mode = { 'n', 'v' },
      --       },
      --     },
      --   },
      -- }
      -- require('plugins.custom.spinner'):init()
    end,
  },
}
