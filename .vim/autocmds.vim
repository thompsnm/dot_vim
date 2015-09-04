" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  augroup MyAutoCommands
    " Clear the auto command group so we don't define it multiple times
    " Idea from http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    autocmd!

    " No formatting on o key newlines
    autocmd BufNewFile,BufEnter * set formatoptions-=o

    " No more complaining about untitled documents
    autocmd FocusLost silent! :wa

    " When editing a file, always jump to the last cursor position.
    " This must be after the uncompress commands.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line ("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

    " Fix trailing whitespace in my most used programming langauges
    autocmd BufWritePre *.py,*.coffee,*.css,*.less,*.js,*.coffee,
          \*.rb,*.erb,*.groovy,*.java,*.php,*.ftl silent! :StripTrailingWhiteSpace

    autocmd BufRead,BufNewFile .jshintrc,.bowerrc set filetype=json

    " Enable Rainbow Parentheses
    autocmd VimEnter * RainbowParenthesesToggle
    autocmd Syntax * RainbowParenthesesLoadRound
    autocmd Syntax * RainbowParenthesesLoadSquare
    autocmd Syntax * RainbowParenthesesLoadBraces

    " Disable Indent Guides for Clojure files
    autocmd BufNewFile,BufEnter *.clj,*.cljs IndentGuidesDisable
  augroup end
endif
