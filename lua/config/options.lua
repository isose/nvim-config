-- options
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.g.mapleader = "<Space>"

-- keymaps
vim.keymap.set("n", "<Space><Space>x", "<cmd>source %<CR>") -- execute file
vim.keymap.set("n", "<Space>x", ":.lua<CR>")                -- execute line
vim.keymap.set("v", "<Space>x", ":lua<CR>")                 -- execute selected

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")              -- QuickFix next
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")              -- QuickFix prev

vim.keymap.set('n', '<Space>dd', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })

vim.keymap.set("n", "<Space>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>")
vim.keymap.set("n", "<Space>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>")

vim.keymap.set('i', ';;', '<C-o>A;', { noremap = true }) -- insert ; at end of line

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
