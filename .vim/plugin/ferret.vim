"wincent/ferret

let g:FerretAutojump=0

" bind ag to activate grep
nmap <leader>ag <Plug>(FerretAck)
" bind ag to grep highlighted text
vnoremap <leader>ag "xy:Ack <C-r>=escape(@x, '\\/.*$^~[] ')<CR><CR>
" bind sag to grep word under cursor
nmap <leader>sag <Plug>(FerretAckWord)

" bind K to grep highlighted text
vnoremap K y:Ack <C-r>=escape(@", '\\/.*$^~[] ')<CR><CR>
" bind K to grep word under cursor
nmap K <Plug>(FerretAckWord)
