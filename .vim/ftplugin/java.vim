nnoremap <Space>c :JavaCorrect<CR>
nnoremap <Space>cs :Checkstyle<CR>
nnoremap <Space>d :JavaDocComment<CR>
nnoremap <Space>dd :JavaDocPreview<CR>
nnoremap <Space>f :JavaFormat<CR>
nnoremap <Space>h :JavaHierarchy<CR>
nnoremap <Space>i :JavaImport<CR>
nnoremap <Space>io :JavaImportOrganize<CR>
nnoremap <Space>m :JavaMove<space>
nnoremap <Space>o :execute "Dispatch! open -a /Applications/Eclipse.app " . expand('%')<CR>
nnoremap <Space>p :ProjectProblems!<CR>
nnoremap <Space>pr :ProjectRefresh<CR>
nnoremap <Space>pra :ProjectRefreshAll<CR>
nnoremap <Space>r :JavaRename <c-r><c-w>
nnoremap <Space>sc :JavaSearchContext<CR>
nnoremap <Space>si :JavaSearch -x implementors -a vsplit<CR>
nnoremap <Space>sr :JavaSearch -x references -s all<CR>
nnoremap <Space>st :JavaSearch -t type -s all -p
nnoremap <Space>xt :JUnit %<CR>

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
