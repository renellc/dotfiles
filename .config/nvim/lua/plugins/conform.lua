local js_ts_formatters = { "oxfmt", "eslint_d", "eslint", stop_after_first = true }

return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    format_on_save = {
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = js_ts_formatters,
      javascriptreact = js_ts_formatters,
      typescript = js_ts_formatters,
      typescriptreact = js_ts_formatters,
    },
  },
}
