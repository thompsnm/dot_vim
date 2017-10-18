"Chiel92/vim-autoformat

nnoremap <leader>af :Autoformat<CR>
let g:formatdef_sql = '"sqlformat --reindent --keywords upper --identifiers lower -"'
let g:formatters_sql = ['sql']
