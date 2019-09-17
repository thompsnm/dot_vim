"AndrewRadev/switch.vim

let g:switch_mapping = "-"

autocmd BufNewFile,BufRead *[Ss]pec.ts let g:switch_custom_definitions =
    \ [
    \   {
    \     '^\(\s\+\)\?describe\((''[^'']\+'',\)':  '\1xdescribe\2',
    \     '^\(\s\+\)\?xdescribe\((''[^'']\+'',\)':  '\1fdescribe\2',
    \     '^\(\s\+\)\?fdescribe\((''[^'']\+'',\)':  '\1describe\2',
    \   },
    \   {
    \     '^\(\s\+\)\?it\((''[^'']\+'',\)':  '\1xit\2',
    \     '^\(\s\+\)\?xit\((''[^'']\+'',\)':  '\1fit\2',
    \     '^\(\s\+\)\?fit\((''[^'']\+'',\)':  '\1it\2',
    \   },
    \   [' () =>', ' (done) =>'],
    \ ]
