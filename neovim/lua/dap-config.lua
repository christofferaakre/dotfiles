vim.g.dap_virtual_text = true
require("nvim-dap-virtual-text").setup()
require("dapui").setup()

vim.keymap.set("n", "<F5>", "<cmd>DapContinue<CR>")
vim.keymap.set("n", "<F11>", "<cmd>DapStepInto<CR>")
vim.keymap.set("n", "<F10>", "<cmd>DapStepOver<CR>")
vim.keymap.set("n", "<s-f11>", "<cmd>DapStepOut<CR>")
vim.keymap.set("n", "<s-f5>", "<cmd>DapTerminate<CR>")
vim.keymap.set("n", "<c-b>", "<cmd>DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>do", "<cmd>lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<leader>dt", "<cmd>RustDebuggables<CR>")
