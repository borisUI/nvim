vim.g.mapleader = " "

local keymap = vim.keymap -- cache for conciseness

keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decerement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffer management
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to next buffer" }) --  go to next buffer
keymap.set("n", "<leader>bv", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" }) --  go to previous buffer
keymap.set("n", "<leader>bw", "<cmd>bd<CR>", { desc = "Close current buffer" }) --  close current buffer
keymap.set("n", "<leader>bx", "<cmd>bd<CR>", { desc = "Close current buffer" }) --  close current buffer
keymap.set("n", "<leader>nn", "<cmd>enew<CR>", { desc = "Create new buffer" }) --  create current buffer

-- write/save buffer
keymap.set({ "i", "x", "n", "s" }, "<leader>s", "<cmd>w<CR>", { desc = "Write file" }) -- write file
keymap.set({ "i", "x", "n", "s" }, "<leader>S", "<cmd>noa w<CR>", { desc = "Write file without formatting" }) -- write file without formatting

-- move lines up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- proper undo
keymap.set({ "v", "i", "n" }, "U", "<C-r>", { noremap = true })

-- delete to  blackhole register
keymap.set({ "v", "n" }, "d", '"_d', { noremap = true, silent = true })
keymap.set({ "v", "n" }, "D", "d", { noremap = true, silent = true })
