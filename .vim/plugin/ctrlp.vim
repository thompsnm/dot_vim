"ctrlpvim/ctrlp.vim

" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''
" Default to filename mode
let g:ctrlp_by_filename = 1
" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
let g:ctrlp_show_hidden = 1
" Fix new windows opening in split from startify
let g:ctrlp_reuse_window = 'startify'
let g:ctrlp_mruf_max = 350
let g:ctrlp_mruf_default_order = 0

" Leader Commands
nnoremap <leader>t :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>

if executable('rg')
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m

  let g:ctrlp_user_command = 'rg --hidden --glob "!.git/*" --files %s'
  let g:ctrlp_use_caching = 0
elseif executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag -l --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
endif
