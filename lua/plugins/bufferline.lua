return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        numbers = "both", -- Show buffer number and buffer id
        separator_style = "slant", -- Choose separator style (slant, thick, etc.)
        diagnostics = "nvim_lsp", -- Show LSP diagnostics in the bufferline
        show_buffer_icons = true, -- Enable icons
        show_buffer_close_icons = true,
        show_close_icon = false,
        offsets = {{filetype = "NvimTree", text = "File Explorer", padding = 1}},
      }
    }
  end
}

