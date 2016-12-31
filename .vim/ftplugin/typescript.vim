let g:syntastic_typescript_checkers = ['tsuquyomi']

let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_shortest_import_path = 1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

nnoremap <Space>gd :TsuDefinition<CR>
nnoremap <Space>i :TsuImport<CR>
nnoremap <Space>m :make<CR>
nnoremap <Space>r :TsuRenameSymbol<CR>
nnoremap <Space>sr :TsuReferences<CR>
