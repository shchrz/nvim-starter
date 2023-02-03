vim.opt.showmode = false

-- See :help lualine.txt
require('lualine').setup({
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
  },
})

