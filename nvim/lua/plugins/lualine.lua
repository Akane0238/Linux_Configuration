return {
  'nvim-lualine/lualine.nvim',
  config = function()
    -- Set up the plugin configuration here
    require('lualine').setup({
      options = {
        theme = 'gruvbox',  -- Set the theme for lualine
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      }
    })
  end,
  event = 'VimEnter',  -- Lazy load when Vim enters
}
