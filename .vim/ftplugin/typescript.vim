let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_shortest_import_path = 1

let g:syntastic_typescript_checkers = ['tsuquyomi']

nnoremap <Space>rr :TsuRenameSymbol<CR>
nnoremap <Space>sr :TsuReferences<CR>
nnoremap <Space>gd :TsuDefinition<CR>
nnoremap <Space>i :TsuImport<CR>
