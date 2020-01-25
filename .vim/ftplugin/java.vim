nnoremap <Space>oe :execute "Dispatch! open -a /Applications/Eclipse.app " . expand('%')<CR>
nnoremap <Space>io :CocCommand java.action.organizeImports

if (has("nvim"))
  let g:vebugger_breakpoint_text='⛔'
  let g:vebugger_currentline_text='->'
  nnoremap <F4> :call vebugger#jdb#attach('5005')<CR>
  nnoremap <F5> :VBGstepOver<CR>
  nnoremap <F6> :VBGstepIn<CR>
  nnoremap <F7> :VBGstepOut<CR>
  nnoremap <F8> :VBGcontinue<CR>
  nnoremap <Space>db :VBGtoggleBreakpointThisLine<CR>
  nnoremap <Space>dd :VBGevalWordUnderCursor<CR>
  nnoremap <Space>de :VBGeval
else
  nnoremap <F4> :JDBAttach<CR>
  nnoremap <F5> :JDBStepOver<CR>
  nnoremap <F6> :JDBStepIn<CR>
  nnoremap <F7> :JDBStepUp<CR>
  nnoremap <F8> :JDBContinue<CR>
  nnoremap <Space>db :JDBToggleBreakpointOnLine<CR>
  nnoremap <Space>dd :JDBCommand dump <c-r><c-w><CR>
  nnoremap <Space>de :JDBCommand 
endif

" Enable SplitJoin for Java files
" https://github.com/AndrewRadev/splitjoin.vim/issues/33#issuecomment-44213183
if !exists('b:splitjoin_split_callbacks')
  let b:splitjoin_split_callbacks = [
        \ 'sj#js#SplitArgs',
        \ 'sj#js#SplitArray',
        \ 'sj#js#SplitObjectLiteral',
        \ 'sj#js#SplitFunction',
        \ 'sj#js#SplitOneLineIf',
        \ ]
endif
if !exists('b:splitjoin_join_callbacks')
  let b:splitjoin_join_callbacks = [
        \ 'sj#js#JoinArray',
        \ 'sj#js#JoinArgs',
        \ 'sj#js#JoinFunction',
        \ 'sj#js#JoinOneLineIf',
        \ 'sj#js#JoinObjectLiteral',
        \ ]
endif
