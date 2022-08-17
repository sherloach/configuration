local status, hop = pcall(require, "hop")
if (not status) then return end

hop.setup({
  keys = 'etovxqpdygfblzhckisuran',
})

vim.api.nvim_set_keymap('', 'f',
  "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>"
  , {})
vim.api.nvim_set_keymap('', 'F',
  "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>"
  , {})
