local autocmd = vim.api.nvim_create_autocmd
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

-- [[ Highlight on yank ]]
-- See `<cmd>help vim.highlight.on_yank()`
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 150,
    })
    end,
    group = highlight_group,
    pattern = "*",
})
