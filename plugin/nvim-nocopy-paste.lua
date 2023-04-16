

function _nocopy_paste()
    -- press ESC first because `vim.fn.getpos`
    -- will not work correct until ESC is pressed
    vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'x', false)

    -- get selected range
    local buffer, start_row, start_col, _ = unpack(vim.fn.getpos("'<"))
    local _,      end_row,   end_col,   _ = unpack(vim.fn.getpos("'>"))

    -- remove selected text
    vim.api.nvim_buf_set_text(buffer, start_row - 1, start_col - 1, end_row - 1, end_col, {})

    -- place cursor on proper position
    -- (don't ask me why position of cursor is (1,0)-indexed...)
    local new_col = math.max(start_col - 2, 0)
    vim.api.nvim_win_set_cursor(buffer, {start_row, new_col})

    -- paste text from buffer
    -- take current position in account
    if new_col == 0 then
        vim.api.nvim_command("normal! P")
    else
        vim.api.nvim_command("normal! p")
    end
end


-- register keymaps

vim.api.nvim_set_keymap('v', '<C-v>', "<cmd>lua _nocopy_paste()<CR>",
                        { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'p', "<cmd>lua _nocopy_paste()<CR>",
                        { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'P', "<cmd>lua _nocopy_paste()<CR>",
                        { noremap = true, silent = true })
