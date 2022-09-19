local M = {}

M.general = {
  n = {
    ["<C-v>"] = { "<cmd>split<CR>", "horizontal split" },
    ["<C-h>"] = { "<cmd>vsplit<CR>", "vertical split" },
    ["<leader>h"] = { "<C-w>h", "move left" },
    ["<leader>l"] = { "<C-w>l", "move right" },
    ["<leader>j"] = { "<C-w>j", "move down" },
    ["<leader>k"] = { "<C-w>k", "move up" },
    ["L"] = {"$", "move to the line end"}, 
    ["H"] = {"^", "move to the line begin"},
    ["<Up>"] = {"<cmd>resize -2<CR>", "resize window"},
    ["<Down>"] = {"<cmd>resize +2<CR>", "resize window"},
    ["<Left>"] = {"<cmd>vertical resize +2<CR>", "resize window"},
    ["<Right>"] = {"<cmd>vertical resize -2<CR>", "resize window"},
  },
}

M.nvimgdb = {
  n = {
    ["<leader>dd"] = { ":GdbStart gdb -q", "start gdb" },
    ["<leader>dp"] = { ":GdbStartPDB python -m pdb", "start pdb" },
    [";b"] = { "<cmd>GdbBreakpointToggle<CR>", "set break point"},
    [";s"] = { "<cmd>GdbStep<CR>", "step" },
    [";n"] = { "<cmd>GdbNext<CR>", "next"},
    [";c"] = { "<cmd>GdbContinue<CR>", "continue" },
    [";u"] = { ":GdbUntil", "do unil row number"},
  },
}

M.aerial = {
  n={
      ["<leader>o"] = {"<cmd>AerialToggle<CR>", "open outline"},
    },
}
-- more keybinds!
M.hop = {
  n={
    ["<leader>gl"] = {"<cmd>HopLineStart<CR>", "easy to go to a line"}
  },
}

return M
