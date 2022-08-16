local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    --separator_style = 'thick',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  },
  highlights = {
    --[[separator = {
      fg = '#abb2bf',
      bg = '#1e272e',
    },
    separator_selected = {
      fg = '#abb2bf',
    },]]
    background = {
      fg = '#abb2bf',
    },
    buffer_selected = {
      fg = '#98c379',
    },
    --[[fill = {
      bg = '#1e272e'
    }]]
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
