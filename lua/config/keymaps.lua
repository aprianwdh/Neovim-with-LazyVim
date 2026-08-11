-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 1. Pindah TAB (Buffer) pakai Shift + Arrow (Kiri / Kanan)
vim.keymap.set("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer (Tab)" })
vim.keymap.set("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next Buffer (Tab)" })

-- 2. Pindah Jendela (Dari Terminal Split ke Tempat Ngoding) pakai Ctrl + Arrow
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window" })

-- 3. Agar Ctrl + Arrow juga bekerja saat kursor kamu sedang AKTIF mengetik di dalam terminal
vim.keymap.set("t", "<C-Left>", [[<C-\><C-n><C-w>h]], { desc = "Terminal: Go to Left Window" })
vim.keymap.set("t", "<C-Down>", [[<C-\><C-n><C-w>j]], { desc = "Terminal: Go to Lower Window" })
vim.keymap.set("t", "<C-Up>", [[<C-\><C-n><C-w>k]], { desc = "Terminal: Go to Upper Window" })
vim.keymap.set("t", "<C-Right>", [[<C-\><C-n><C-w>l]], { desc = "Terminal: Go to Right Window" })

-- 4. Save file pakai Ctrl + S di Normal, Insert, dan Visual Mode
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
