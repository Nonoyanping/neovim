-- local g = vim.g
-- local wo = vim.wo
local o = vim.o
local opt = vim.opt
-- local api = vim.api
-- local exec = vim.api.nvim_exec

-- NOTE: Set your shell to powershell
local powershell_options = {
    shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
}

for option, value in pairs(powershell_options) do
    vim.opt[option] = value
end

vim.cmd[[let $LANG = 'en_US']]

-- something cool
opt.list = true
-- opt.listchars:append("eol:↴")
opt.listchars:append("space:･")
-- o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

-- make popup background transparent
opt.pumblend = 20

-- Set cursorhold updatetime(:  .
vim.g.cursorhold_updatetime = 100

--[[ -- Set signcolumn width to 2.
-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.opt.signcolumn = "yes:2"
autocmd("CursorHold", {
    pattern = "*",
    callback = function()
        vim.diagnostic.open_float(nil, { focusable = false })
    end,
}) ]]

-- Setting completion menu height.
opt.pumheight = 20 -- pop up menu height.

-- Set searching stuf.
-- opt.hlsearch = true
-- opt.incsearch = true
-- opt.ignorecase = true

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
-- opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
-- opt.shortmess = vim.opt.shortmess + { c = true }
-- api.nvim_set_option("updatetime", 300)
