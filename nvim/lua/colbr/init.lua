require("colbr.remap")
require("colbr.set")

vim.cmd('autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.md,*.html Prettier')
