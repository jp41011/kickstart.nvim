--function ColorMe(color)
--  color = color or 'rose-pine'
--  vim.cmd.colorscheme(color)
--
--  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
--end
--
--return {
--  {
--    'rose-pine/neovim',
--    name = 'rose-pine',
--    config = function()
--      require('rose-pine').setup {
--        disable_background = true,
--        style = {
--          italic = false,
--        },
--      }
--      --ColorMe()
--    end,
--  },
--}

return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    -- vim.cmd 'colorscheme rose-pine'
    -- vim.cmd 'colorscheme rose-pine-main'
    vim.cmd 'colorscheme rose-pine-moon'
    -- vim.cmd 'colorscheme rose-pine-dawn'
  end,
}
