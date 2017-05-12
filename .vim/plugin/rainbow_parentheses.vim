"kien/rainbow_parentheses.vim

" Enable Rainbow Parentheses
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

let g:rbpt_max = 8
let g:rbpt_colorpairs = [
    \ ['136',  '#b58900'],
    \ ['61',   '#6c71c4'],
    \ ['166',  '#cb4b16'],
    \ ['33',   '#268bd2'],
    \ ['160',  '#dc322f'],
    \ ['37',   '#2aa198'],
    \ ['125',  '#d33682'],
    \ ['64',   '#859900'],
    \ ]
