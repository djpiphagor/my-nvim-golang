vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- This keybinding uses jk as escape but don't know if like it
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true })

-- Folding
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldlevelstart = 99 -- Start with all folds open
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.signcolumn = "yes"
vim.opt.foldlevelstart = 99 -- Start with all folds open
-- vim.opt.fillchars = {
-- 	fold = " ",
-- 	foldopen = "", -- Use a character for open folds
-- 	foldclose = "", -- Use a character for closed folds
-- }

-- This keymap clears the search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err")
vim.keymap.set("n", "<leader>ff", ":!gofmt -w %<CR><CR>")
vim.keymap.set("n", "<leader>pp", ":!prettier -w %<CR><CR>") -- prettier formatter

-- go run cmd
vim.keymap.set("n", "<leader>gr", ":!go run -v .<CR>")

-- go mod init cmd
local function run_go_mod_func()
	local mod_name = vim.fn.input("Enter a module name: ")
	if mod_name ~= "" then
		vim.cmd(":!go mod init " .. mod_name)
	end
end
vim.keymap.set("n", "<leader>gm", run_go_mod_func, { noremap = true, silent = true })

-- go build cmd
local function run_go_build()
	local build_name = vim.fn.input("Enter an exec file name: ")
	if build_name ~= "" then
		vim.cmd(":!go build -o " .. build_name .. " .")
	end
end
vim.keymap.set("n", "<leader>gb", run_go_build, { noremap = true, silent = true })
