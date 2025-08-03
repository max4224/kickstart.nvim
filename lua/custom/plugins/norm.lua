return {
  --[[
  {
    'MoulatiMehdi/42norm.nvim',
    config = function()
      local norm = require '42norm'

      norm.setup {
        header_on_save = false,
        format_on_save = false,
        liner_on_change = false,
      }

      -- Press "F5" key to run the norminette
      vim.keymap.set('n', '<F5>', function()
        norm.check_norms()
      end, { desc = 'Update 42norms diagnostics', noremap = true, silent = true })

      vim.keymap.set('n', '<C-f>', function()
        norm.format()
      end, { desc = 'Format buffer on 42norms', noremap = true, silent = true })

      vim.keymap.set('n', '<F1>', function()
        norm.stdheader()
      end, { desc = 'Insert 42header', noremap = true, silent = true })
    end,
  },
]]
}
