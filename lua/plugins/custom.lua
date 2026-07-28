return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_colors = function(colors)
        if vim.o.background == "dark" then
          --colors.bg = "NONE"
        end
      end,
    },
  },
  {
    "f-person/auto-dark-mode.nvim",
    opts = {},
  },
  {
    "lambdalisue/suda.vim",
    cmd = { "SudaRead", "SudaWrite" },
  },
  {
    "github/copilot.vim",
  },
  {
    "tpope/vim-sleuth",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.api.nvim_create_user_command("TestLSP", function()
        local params = vim.lsp.util.make_position_params(0, "utf-8")
        local result = vim.lsp.buf_request_sync(0, "textDocument/completion", params, 500)
        if not result then
          vim.notify("No LSP result", vim.log.levels.WARN)
          return
        end

        local items = {}
        for _, res in pairs(result) do
          if res.result then
            local list = res.result.items or res.result.result
            for _, item in ipairs(list) do
              if item.kind and item.kind ~= 0 then
                local type_str = item.detail or "any"
                local kind_name = vim.lsp.protocol.CompletionItemKind[item.kind] or "?"
                table.insert(items, string.format("%s: %s [%s]", kind_name, item.label, type_str))
              end
            end
            break
          end
        end
        local output = table.concat(items, "\n", 1, math.min(#items, 20))
        vim.notify(output, vim.log.levels.INFO)
      end, {})
    end,
  },
}
