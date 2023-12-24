local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
      -- ["<leader>h"] = "",
      -- ["<C-a>"] = ""
  }
}

-- Your custom mappings
M.general = {
  n = {
    ["<leader>p"] = {"<cmd> Lazy <CR>", "Call Lazy UI"},
  },
  i = {
     ["jj"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}

M.hop = {
  n = {
    ["f"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true }) end,"hop current line"},
    ["F"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true }) end,"hop current line"},
    ["t"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end,"hop current line"},
    ["T"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end,"hop current line"},

    ["<leader><leader>w"] = {"<cmd>HopWord<cr>", "HopWord"},
    ["<leader><leader>l"] = {"<cmd>HopLine<cr>", "HopLine"},
    ["<leader><leader>f"] = {"<cmd>HopChar1<cr>", "HopChar1"},
    ["H"] = {"<cmd>HopChar2<cr>", "HopChar2"},
    ["/"] = {"<cmd>HopPattern<cr>", "HopPattern"},
    ["L"] = {"<cmd>HopWordCurrentLine<cr>", "HopWordCurrentLine"},
  },
  v = {
    ["f"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true }) end,"hop current line"},
    ["F"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true }) end,"hop current line"},
    ["t"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end,"hop current line"},
    ["T"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end,"hop current line"},
  },
  x = {
    ["f"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true }) end,"hop current line"},
    ["F"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true }) end,"hop current line"},
    ["t"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end,"hop current line"},
    ["T"] = {function () require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end,"hop current line"},
  }
}

--> auto reload config
-- require("plenary.reload").reload_module "custom.chadrc"
-- *telescope.actions.layout.toggle_mirror()*
M.telescope = {
  n = {
    ["<leader>?"] = {"<cmd>Telescope<CR>", "Telescope"},
    ["<leader>fl"] = {"<cmd>Telescope highlights<CR>", "Find highlight"},
    ["<leader>en"] = {function ()
      require("telescope.builtin").git_files {
        shorten_path = false,
        cwd = "~/AppData/Local/nvim/",
        prompt = "#Neovim Configuration#",
      }
    end, "Neovim Config"}
  }
-- ("n", "<leader>fd", ":lua require('telescope.builtin').diagnostics()<cr>")
-- ("n", "<leader>fs", ":lua require('telescope.builtin').lsp_workspace_symbols()<cr>")
-- ("n", "<leader>fr", ":lua require('telescope.builtin').lsp_references()<cr>")
-- ("n", "<leader>fi", ":lua require('telescope.builtin').lsp_implementations()<cr>")
-- ("n", "<leader>fc", ":lua require('telescope.builtin').commands()<cr>")
-- ("n", "<leader>fch", ":lua require('telescope.builtin').command_history()<cr>")
-- ("n", "<leader>fsh", ":lua require('telescope.builtin').search_history()<cr>")
-- ("n", "<leader>fmp", ":lua require('telescope.builtin').man_pages()<cr>")
-- ("n", "<leader>fgb", ":lua require('telescope.builtin').git_branches()<cr>")
-- ("n", "<leader>fs", "<cmd>Telescope spell_suggest<CR>", { silent = true })
-- ("n", "<leader>ft", "<cmd>Telescope treesitter<CR>", { silent = true })
-- ("n", "<leader>fr", "<cmd>Telescope resume<CR>", { silent = true })
-- ("n", "<leader>flc", "<cmd>Telescope lsp_code_actions<CR>", { silent = true })
-- ("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { silent = true })
}

M.specs = {
-- TODO:
-- vim.api.nvim_set_keymap('n', '<C-b>', ':lua require("specs").show_specs()', { noremap = true, silent = true })

-- TODO: Or maybe you do a lot of screen-casts and want to call attention to a specific line of code:
-- vim.api.nvim_set_keymap('n', '<leader>v', ':lua require("specs").show_specs({width = 97, winhl = "Search", delay_ms = 610, inc_ms = 21})<CR>', { noremap = true, silent = true })
  n = {
    ["n"] = {function () require("specs").show_specs() end, "show specs"},
    ["N"] = {function () require("specs").show_specs() end, "show specs"},
  }
}

M.dap = {
  n = {
     ["<leader>dt"] = {"<cmd> DapToggleBreakpoint <CR>", "[D]ap [T]oggleBreakpoint"},
     ["<leader>dx"] = {"<cmd> DapTerminate <CR>", "DapTerminate"},
     ["<leader>do"] = {"<cmd> DapStepOver <CR>", "DapStepOver"},
  },
}

M.trouble = {
  n = {
    ["<leader>tx"] = {"<cmd>TroubleToggle<cr>", "Trouble Toggle"},
    ["<leader>tw"] = {"<cmd>TroubleToggle workspace_diagnostics<cr>", "TroubleToggle workspace_diagnostics"},
    ["gR"] = {"<cmd>TroubleToggle lsp_references<cr>", "TroubleToggle lsp_references"},
    ["<leader>td"] = {"<cmd>TroubleToggle document_diagnostics<cr>", "TroubleToggle document_diagnostics"},
    ["<leader>tl"] = {"<cmd>TroubleToggle loclist<cr>", "Trouble location_list"},
    ["<leader>tq"] = {"<cmd>TroubleToggle quickfix<cr>", "TroubleToggle quickfix"},
    --[[ -- jump to the next item, skipping the groups
    require("trouble").next({skip_groups = true, jump = true});

    -- jump to the previous item, skipping the groups
    require("trouble").previous({skip_groups = true, jump = true});

    -- jump to the first item, skipping the groups
    require("trouble").first({skip_groups = true, jump = true});

    -- jump to the last item, skipping the groups
    require("trouble").last({skip_groups = true, jump = true}); ]]
  },
}

M.todo_comments = {
  n = {
    ["]t"] = {function() require("todo-comments").jump_next() end, "Next todo comment"},
    ["[t"] = {function() require("todo-comments").jump_prev() end, "Previous todo comment"},
    -- -- You can also specify a list of valid jump keywords
    -- vim.keymap.set("n", "]t", function() require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }}) end, { desc = "Next error/warning todo comment" })
  }
}

return M
