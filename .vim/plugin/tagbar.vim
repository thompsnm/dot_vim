"majutsushi/tagbar

nnoremap <leader>tt :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_compact = 1
let g:tagbar_width = 60

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'n:ng-component',
        \ 't:ng-scope-variable',
        \ 'c:classes',
        \ 'm:methods',
        \ 'p:fields',
        \ 'f:functions:1:1',
        \ 'v:variables:1:0',
        \ 'o:object',
        \ 'a:array:1:0',
        \ 's:string:1:0'
    \ ]
\ }

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'Groovy',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'c:classes',
        \ 'i:interfaces',
        \ 't:traits',
        \ 'e:enums',
        \ 'r:constructors',
        \ 'm:methods',
        \ 'f:fields:1'
    \ ]
\ }

let g:tagbar_type_html = {
    \ 'ctagstype' : 'html',
    \ 'kinds'     : [
        \ 'o:ng-*'
    \ ]
\ }

let g:tagbar_type_cucumber = {
    \ 'ctagstype': 'cucumber',
    \ 'kinds': [
        \'d:definition'
      \]
    \}

let g:tagbar_type_css = {
    \ 'ctagstype' : 'css',
    \ 'kinds'     : [
        \ 'c:class',
        \ 'i:id',
        \ 'm:media',
        \ 't:tag'
    \ ]
\ }

let g:tagbar_type_less = {
    \ 'ctagstype' : 'css',
    \ 'kinds'     : [
        \ 'c:class',
        \ 'i:id',
        \ 'm:media',
        \ 't:tag',
        \ 'v:variables',
    \ ]
\ }

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading 1',
        \ 'i:Heading 2',
        \ 'k:Heading 3',
        \ 'l:Heading 4'
    \ ]
\ }

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

let g:tagbar_type_xml = {
    \ 'ctagstype' : 'WSDL',
    \ 'kinds'     : [
        \ 'n:namespaces',
        \ 'm:messages',
        \ 'p:portType',
        \ 'o:operations',
        \ 'b:bindings',
        \ 's:service'
    \ ]
\ }

let g:tagbar_type_xsd = {
    \ 'ctagstype' : 'XSD',
    \ 'kinds'     : [
        \ 'e:elements',
        \ 'c:complexTypes',
        \ 's:simpleTypes'
    \ ]
\ }

let g:tagbar_type_xslt = {
  \ 'ctagstype' : 'xslt',
  \ 'kinds' : [
    \ 'v:variables',
    \ 't:templates'
  \ ]
\}
