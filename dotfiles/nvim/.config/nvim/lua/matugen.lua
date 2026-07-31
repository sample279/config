 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#222222',
    base01 = '#2a2a2a',
    base02 = '#343434',
    base03 = '#6c6c6c',
    base04 = '#c9a554',
    base05 = '#c2c2b0',
    base06 = '#c2c2b0',
    base07 = '#c2c2b0',
    base08 = '#b36d43',
    base09 = '#bb7744',
    base0A = '#b36d43',
    base0B = '#c9a554',
    base0C = '#e9b996',
    base0D = '#e9cf96',
    base0E = '#e9b596',
    base0F = '#3d200f',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#c2c2b0',          bg = '#222222' })
  hi('TelescopeBorder',         { fg = '#6c6c6c',             bg = '#222222' })
  hi('TelescopePromptNormal',   { fg = '#c2c2b0',          bg = '#222222' })
  hi('TelescopePromptBorder',   { fg = '#6c6c6c',             bg = '#222222' })
  hi('TelescopePromptPrefix',   { fg = '#c9a554',             bg = '#222222' })
  hi('TelescopePromptCounter',  { fg = '#c9a554',  bg = '#222222' })
  hi('TelescopePromptTitle',    { fg = '#222222',             bg = '#c9a554' })
  hi('TelescopePreviewTitle',   { fg = '#222222',             bg = '#b36d43' })
  hi('TelescopeResultsTitle',   { fg = '#222222',             bg = '#bb7744' })
  hi('TelescopeSelection',      { fg = '#c2c2b0',          bg = '#343434' })
  hi('TelescopeSelectionCaret', { fg = '#c9a554',             bg = '#343434' })
  hi('TelescopeMatching',       { fg = '#c9a554',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
