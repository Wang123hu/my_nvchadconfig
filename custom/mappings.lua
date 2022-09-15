local M = {}

M.general = {
  n = {
    ["<C-v>"] = { "<cmd>split<CR>", "horizontal split" },
    ["<C-h>"] = { "<cmd>vsplit<CR>", "vertical split" },
    ["<leader>h"] = { "<C-w>h", "move left" },
    ["<leader>l"] = { "<C-w>l", "move right" },
    ["<leader>j"] = { "<C-w>j", "move down" },
    ["<leader>k"] = { "<C-w>k", "move up" },
  },
}

M.nvimgdb = {
  n = {
    ["<leader>dd"] = { ":GdbStart gdb -q" },
    ["<leader>dp"] = { ":GdbStartPDB python -m pdb" },
    [";b"] = { "<cmd>GdbBreakpointToggle<CR>" },
    [";s"] = { "<cmd>GdbStep<CR>" },
    [";n"] = { "<cmd>GdbNext<CR>" },
    [";c"] = { "<cmd>GdbContinue<CR>" },
    [";u"] = { ":GdbUntil" },
  },
}
-- more keybinds!

return M
