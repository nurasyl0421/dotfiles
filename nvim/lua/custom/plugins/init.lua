-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      size = 15,
      open_mapping = [[<C-\>]],
      direction = 'horizontal',
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      on_open = function(term)
        -- Escape to normal mode, then toggle to hide
        vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { buffer = term.bufnr })
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { buffer = term.bufnr })
      end,
    },
  },
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = 'Git diff all changes' },
      { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = 'Git file history' },
    },
  },
}
