local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

local function show_verse_of_the_day()
  require("bible-votd").show_verse_of_the_day()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = show_verse_of_the_day })
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

vim.opt.relativenumber = true

vim.keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre",
})
vim.keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word",
})
vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
