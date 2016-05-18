" ----------------------------------------
" vim-plug
" ----------------------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" ---------------
" Plug Bundles
" ---------------

" Navigation
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'regedarek/ZoomWin', { 'on': 'ZoomWin' }
Plug 'tpope/vim-unimpaired'
" UI Additions
Plug 'edkolev/tmuxline.vim'
Plug 'jszakmeister/vim-togglecursor'
Plug 'kien/rainbow_parentheses.vim'
Plug 'majutsushi/tagbar' | Plug 'szw/vim-tags'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'nanotech/jellybeans.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
" Commands
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'HelpClose'
Plug 'bronson/vim-visual-star-search'
Plug 'dansomething/vim-eclim'
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
Plug 'mattn/emmet-vim'
Plug 'Valloric/ListToggle'
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'scratch.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'lambdalisue/vim-gita'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/UnconditionalPaste'
" Automatic Helpers
Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/MatchTagAlways'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'matchit.zip'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'scrooloose/syntastic'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
"    UltiSnips
if v:version >= 704
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
endif
"   YouCompleteMe
if v:version > 703 || (v:version == 703 && has('patch584'))
  function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force
      !./install.py --clang-completer --gocode-completer
    endif
  endfunction
  Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
endif
" Language Additions
"   Clojure
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'guns/vim-slamhound', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-projectionist', { 'for': 'clojure' }
Plug 'tpope/vim-salve', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
"   JavaScript
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'matthewsimo/angular-vim-snippets', { 'for': ['javascript', 'coffee'] }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
"   HTML
Plug 'indenthtml.vim', { 'for': ['html', 'hbs'] }
Plug 'mustache/vim-mustache-handlebars', { 'for': ['html', 'hbs'] }
Plug 'othree/html5.vim', { 'for': ['html', 'hbs'] }
"   Other Languages
Plug 'ap/vim-css-color', { 'for': ['css', 'less', 'sass'] }
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'less', 'sass'] }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'luishdez/vim-less', { 'for': 'less' }
Plug 'samsonw/vim-task', { 'for': 'task' }
Plug 'tfnico/vim-gradle', { 'for': 'groovy' }
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'tpope/vim-cucumber', { 'for': ['feature', 'story'] }
" Misc
Plug 'ryanss/vim-hackernews', { 'on': 'HackerNews' }

" Add plugins to &runtimepath
call plug#end()
