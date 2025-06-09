vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.lua",
  callback = function(args)
    vim.lsp.buf.format({
      bufnr = args.buf,
      filter = function(client)
        return client.name == "efm"
      end,
    })
  end,
})

