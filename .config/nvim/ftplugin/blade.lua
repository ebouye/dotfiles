vim.api.nvim_create_autocmd({ "BufRead", "BUfNewFile" }, {
  pattern = "*.blade.php",
  callback = function ()
    vim.filetype.add({
      extension = {
        [".*%.blade%.php"] = "phtml"
      },
    })

    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true

    -- Enable LSP for blade files
    if vim.fn.exists(":LspStart") > 0 then
      vim.cmd("LspStart intelephense")
    end

  end
})

