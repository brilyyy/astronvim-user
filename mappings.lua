return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>z"] = { name = " Zen Mode" },
    ["<leader>zt"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
    ["<leader>zT"] = { "<cmd>Twilight<cr>", desc = "Toggle Twilight" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav((vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Next buffer",
    },

    -- IconPicker
    ["<leader>P"] = {
      name = " Icon",
    },
    ["<leader>Pi"] = {
      "<cmd>IconPickerNormal<cr>",
      desc = "Icon picker",
    },

    -- Resizing split
    ["<A-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
    ["<A-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
    ["<A-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["<A-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },

  i = {
    -- go to  beginning and end
    ["<C-b>"] = { "<ESC>^i", desc = "Beginning of line" },
    ["<C-e>"] = { "<End>", desc = "End of line" },

    -- navigate within insert mode
    ["<C-h>"] = { "<Left>", desc = "Move left" },
    ["<C-l>"] = { "<Right>", desc = "Move right" },
    ["<C-j>"] = { "<Down>", desc = "Move down" },
    ["<C-k>"] = { "<Up>", desc = "Move up" },

    ["<C-i>"] = { "<cmd>IconPickerInsert<cr>", desc = "Icon picker" },
  },
}
