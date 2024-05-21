local ls = require "luasnip"

require("luasnip.loaders.from_vscode").lazy_load()

-- Set keymaps for snippet expansion and jumping
vim.api.nvim_set_keymap("i", "<C-k>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<C-k>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<C-j>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })

-- Set configuration for luasnip
ls.config.set_config {
  history = true,
  updateevents = "TextChanged,TextChangedI",
}

-- Load custom snippets
for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/custom/snippets/*.lua", true)) do
  loadfile(ft_path)()
end
