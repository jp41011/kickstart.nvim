--function ColorMe(color)
--  color = color or 'rose-pine'
--  vim.cmd.colorscheme(color)
--
--  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
--end

return {
  {
    'olimorris/onedarkpro.nvim',
    name = 'oneDarkPro', -- local name only
    config = function()
      vim.cmd 'colorscheme onedark_vivid'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    --config = function()
    -- vim.cmd 'colorscheme rose-pine'
    -- vim.cmd 'colorscheme rose-pine-main'
    --vim.cmd 'colorscheme rose-pine-moon'
    -- vim.cmd 'colorscheme rose-pine-dawn'
    --end,
  },
}
