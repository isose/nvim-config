return {
  "mrjones2014/smart-splits.nvim",
  event = { "WinNew " },
  keys = {
    -- Resizing splits
    { "<M-h>",             function() require("smart-splits").resize_left() end },
    { "<M-j>",             function() require("smart-splits").resize_down() end },
    { "<M-k>",             function() require("smart-splits").resize_up() end },
    { "<M-l>",             function() require("smart-splits").resize_right() end },
    -- Moving between splits
    { "<C-h>",             function() require("smart-splits").move_cursor_left() end },
    { "<C-j>",             function() require("smart-splits").move_cursor_down() end },
    { "<C-k>",             function() require("smart-splits").move_cursor_up() end },
    { "<C-l>",             function() require("smart-splits").move_cursor_right() end },
    { "<C-\\>",            function() require("smart-splits").move_cursor_previous() end },
    -- Swapping buffers between windows
    { "<leader><leader>h", function() require("smart-splits").swap_buf_left() end },
    { "<leader><leader>j", function() require("smart-splits").swap_buf_down() end },
    { "<leader><leader>k", function() require("smart-splits").swap_buf_up() end },
    { "<leader><leader>l", function() require("smart-splits").swap_buf_right() end },
  },
}
