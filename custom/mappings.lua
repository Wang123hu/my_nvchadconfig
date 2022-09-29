local M = {}

M.general = {
  n = {
    -- ["<C-v>"] = { "<cmd>split<CR>", "horizontal split" },
    ["<C-h>"] = { "<cmd>vsplit<CR>", "vertical split" },
    ["<leader>h"] = { "<C-w>h", "move left" },
    ["<leader>l"] = { "<C-w>l", "move right" },
    ["<leader>j"] = { "<C-w>j", "move down" },
    ["<leader>k"] = { "<C-w>k", "move up" },
    ["L"] = { "$", "move to the line end" },
    ["H"] = { "^", "move to the line begin" },
    ["<Up>"] = { "<cmd>resize -2<CR>", "resize window" },
    ["<Down>"] = { "<cmd>resize +2<CR>", "resize window" },
    ["<Left>"] = { "<cmd>vertical resize +2<CR>", "resize window" },
    ["<Right>"] = { "<cmd>vertical resize -2<CR>", "resize window" },
  },
}

M.nvimgdb = {
  n = {
    ["<leader>dd"] = { ":GdbStart gdb -q", "start gdb" },
    ["<leader>dp"] = { ":GdbStartPDB python -m pdb", "start pdb" },
    [";b"] = { ":GdbBreakpointToggle<CR>", "set break point" },
    [";s"] = { "<cmd>GdbStep<CR>", "step" },
    [";n"] = { "<cmd>GdbNext<CR>", "next" },
    [";c"] = { "<cmd>GdbContinue<CR>", "continue" },
    [";u"] = { ":GdbUntil", "do unil row number" },
  },
}

M.aerial = {
  n = {
    ["<leader>o"] = { "<cmd>AerialToggle<CR>", "open outline" },
  },
}
-- more keybinds!
M.hop = {
  n = {
    ["<leader>gl"] = { "<cmd>HopLineStart<CR>", "easy to go to a line" },
  },
}

M.lsp = {
  n = {
    ["<leader>ff"] = { ":lua vim.diagnostic.open_float()<CR>", "floating diagnostic" },
    ["<leader>fm"] = { ":lua vim.lsp.buf.formatting()<CR>", "lsp formating" },
    ["<leader>wa"] = { ":lua vim.buf.add_workspace_folder()<CR>", "add workspace folder" },
    ["<leader>wr"] = { ":lua vim.lsp.remove_workspace_folder()<CR>", "remove workspace folder" },
    ["<leader>wl"] = { ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspace folders" },
    ["<leader>qq"] = { ":lua vim.diagnostic.setloclist()<CR>", "diagnostic setlocalist" },
    ["gD"] = {":lua vim.lsp.buf.declaration()<CR>", "lsp declaration"},
    ["gd"] = {":lua vim.lsp.buf.definition()<CR>", "lsp definition"},
    ["gi"] = {":lua vim.lsp.buf.implementation()<CR>", "lsp implementation"},
    ["<leader>ls"] = {":lua vim.lsp.buf.signature_help()<CR>", "lsp signature_help"},
    ["<leader>D"] = {":lua vim.lsp.buf.type_definition()<CR>", "lsp definition type"},
    ["<leader>ra"] = {':lua require("nvchad_ui.renamer").open()<CR>', "lsp rename"},
    ["<leader>ca"] = {":lua vim.lsp.buf.code_action()<CR>", "lsp code_action"},
  },
}
return M
