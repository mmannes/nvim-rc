local builtin = require('telescope.builtin')

-- telescoPe Find files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- telescoPe Find files
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})

-- telescoPe Symbols inside document
vim.keymap.set('n', '<leader>ps', function() 
    builtin.lsp_document_symbols({ignore_symbols = "variable"});
end)

-- telescoPe References
vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {})

-- telescoPe Text search
vim.keymap.set('n', '<leader>pt', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
