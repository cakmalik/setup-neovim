return {
  "phpactor/phpactor",
  build = function()
    vim.fn.system({ "composer", "install", "--no-dev", "--optimize-autoloader" })
  end,
  config = function()
    -- Keymap untuk transformasi kode
    vim.api.nvim_set_keymap("n", "<leader>ct", ":PhpactorTransform<CR>", { noremap = true, silent = true })

    -- Keymap untuk auto-import class
    vim.api.nvim_set_keymap("n", "<leader>ci", ":PhpactorImportClass<CR>", { noremap = true, silent = true })
  end,
}
