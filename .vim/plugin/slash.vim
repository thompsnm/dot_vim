"---------------------------------------
" https://github.com/junegunn/vim-slash
"---------------------------------------
if has('timers')
  " Blink 2 times with 50ms interval
  noremap <expr> <plug>(slash-after) 'zz'.slash#blink(2, 50)
endif
