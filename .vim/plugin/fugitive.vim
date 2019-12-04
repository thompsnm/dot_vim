"tpope/vim-fugitive

nnoremap <Leader>gb :Gblame<CR>
" Open commit in a new tab
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :25Gstatus<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>gpf :Gpush --force-with-lease<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Gpull<CR>
nnoremap <Leader>gd :Gvdiffsplit<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>
" Start git command
nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1
