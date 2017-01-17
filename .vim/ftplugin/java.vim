nnoremap <Space>c :JavaCorrect<CR>
nnoremap <Space>cs :Checkstyle<CR>
nnoremap <Space>d :JavaDocComment<CR>
nnoremap <Space>f :JavaFormat<CR>
nnoremap <Space>h :JavaHierarchy<CR>
nnoremap <Space>i :JavaImport<CR>
nnoremap <Space>io :JavaImportOrganize<CR>
nnoremap <Space>m :JavaMove<space>
nnoremap <Space>o :execute "Dispatch open -a Eclipse " . expand('%')<CR>
nnoremap <Space>p :ProjectProblems!<CR>
nnoremap <Space>r :JavaRename <c-r><c-w>
nnoremap <Space>ra :ProjectRefreshAll<CR>
nnoremap <Space>sc :JavaSearchContext<CR>
nnoremap <Space>si :JavaSearch -x implementors -a vsplit<CR>
nnoremap <Space>sr :JavaSearch -x references -s all<CR>
nnoremap <Space>st :JavaSearch -t type -s all -p
nnoremap <Space>xt :JUnit %<CR>
