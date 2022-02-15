local nvim_lsp = require('lspconfig')

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }

local servers = { "gopls", "pylsp"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = function(_, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      -- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
      -- 绑定快捷键
      require('keybindings').maplsp(buf_set_keymap)
    end,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
vim.diagnostic.config({signs = false})
