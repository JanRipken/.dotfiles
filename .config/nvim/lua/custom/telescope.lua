local telescope = require "telescope"
local data = assert(vim.fn.stdpath "data")

pcall(telescope.load_extension, "fzf")
pcall(telescope.load_extension, "smart_history")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<space>fd", builtin.find_files)
vim.keymap.set("n", "<space>fh", builtin.help_tags)
vim.keymap.set("n", "<space>fg", builtin.live_grep)
vim.keymap.set("n", "<space>/", builtin.current_buffer_fuzzy_find)
vim.keymap.set("n", "<space>gw", builtin.grep_string)

vim.keymap.set("n", "<space>fa", function()
  builtin.find_files { cwd = data .. "/lazy" }
end)

vim.keymap.set("n", "<space>en", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end)
