return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  init = function()
    -- Document keymaps
    require("which-key").add({
      { "<leader>g", group = "Git" },
      { "<leader>u", group = "Undo tree" },
      { "<leader>t", group = "Trouble" },

      { "]d", desc="Next Diagnostic"},
      { "[d", desc="Previous Diagnostic"},
    })
  end,
  opts = {
    -- Replace icons by text
    icons = {
      mappings = false,
      keys = {
        Up = "<up>",
        Down = "<down>",
        Left = "<left>",
        Right = "<right>",
        C = "<ctrl>",
        M = "<alt>",
        D = "<cmd>",
        S = "<shift>",
        CR = "<cr>",
        Esc = "<esc>",
        ScrollWheelDown = "<scrollup>",
        ScrollWheelUp = "<scrolldown>",
        NL = "<nl>",
        BS = "<bs>",
        Space = "<space>",
        Tab = "<tab> ",
        F1 = "<f1>",
        F2 = "<f2>",
        F3 = "<f3>",
        F4 = "<f4>",
        F5 = "<f5>",
        F6 = "<f6>",
        F7 = "<f7>",
        F8 = "<f8>",
        F9 = "<f9>",
        F10 = "<f10>",
        F11 = "<f11>",
        F12 = "<f12>",
      },
    }
  }
}

