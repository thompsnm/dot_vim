"mileszs/ack.vim

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

let g:ackhighlight = 1

nnoremap <silent> <leader>as :AckFromSearch<CR>
nnoremap \ :Ack!<space>
nnoremap <leader>ag :Ack!<space>
vnoremap <leader>ag "xy :Ack! "<C-R>x"
nnoremap <leader>sag :Ack! <C-R><C-W>

" bind K to grep highlighted text
vnoremap K "xy :Ack! "<C-R>x"<CR>
" bind K to grep word under cursor
nnoremap K :Ack! "\b<C-R><C-W>\b"<CR>
