require("nocopy-paste")

vim.api.nvim_set_keymap('v', '<C-v>', "<cmd>lua _nocopy_paste()<CR>",
                        { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'p', "<cmd>lua _nocopy_paste()<CR>",
                        { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'P', "<cmd>lua _nocopy_paste()<CR>",
                        { noremap = true, silent = true })
