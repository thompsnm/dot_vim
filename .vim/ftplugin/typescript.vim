let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']

let g:tsuquyomi_completion_detail = 1
" Disable default quickfix for Syntastic support
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_shortest_import_path = 1
let g:tsuquyomi_single_quote_import = 1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

nnoremap <Space>c :TsuquyomiQuickFix<CR>
nnoremap <Space>h :echo tsuquyomi#hint()<CR>
nnoremap <Space>si :TsuDefinition<CR>
nnoremap <Space>i :TsuImport<CR>
nnoremap <Space>m :make<CR>
nnoremap <Space>p :TsuGeterrProject<CR>
nnoremap <Space>r :TsuRenameSymbolC<CR>
nnoremap <Space>ra :TsuquyomiReloadProject<CR>
nnoremap <Space>sr :TsuReferences<CR>

UltiSnipsAddFiletypes javascript-jasmine-arrow
