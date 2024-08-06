return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc="which_key_ignore" },
    { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc="which_key_ignore" },
    { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc="which_key_ignore" },
    { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc="which_key_ignore" },
    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc="which_key_ignore" },
  },
}