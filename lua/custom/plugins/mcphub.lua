return {
  'ravitemer/mcphub.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  build = 'npm install -g mcp-hub@4.1.0', -- Installs `mcp-hub` node binary globally
  config = function()
    require('mcphub').setup()
  end,
}
