local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

local function show_verse_of_the_day()
  require("bible-votd").show_verse_of_the_day()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = show_verse_of_the_day })
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

vim.opt.relativenumber = true
