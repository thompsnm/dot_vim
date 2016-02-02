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
Plug 'regedarek/ZoomWin', { 'on': 'ZoomWin' }
" This fork is required due to remapping ; to :
Plug 'christoomey/vim-space'
Plug 'Lokaltog/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-unimpaired'
" UI Additions
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'majutsushi/tagbar' | Plug 'szw/vim-tags'
Plug 'nanotech/jellybeans.vim'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'mbbill/undotree'
Plug 'jszakmeister/vim-togglecursor'
Plug 'kien/rainbow_parentheses.vim'
Plug 'edkolev/tmuxline.vim'
" Commands
Plug 'dansomething/vim-eclim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'milkypostman/vim-togglelist'
Plug 'AndrewRadev/sideways.vim'
Plug 'tpope/vim-abolish'
Plug 'scratch.vim'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/switch.vim'
Plug 'tpope/vim-eunuch'
Plug 'vim-scripts/UnconditionalPaste'
Plug 'HelpClose'
Plug 'bronson/vim-visual-star-search'
Plug 'AndrewRadev/splitjoin.vim'
" Automatic Helpers
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-obsession'
Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'Valloric/MatchTagAlways'
"   YouCompleteMe
if v:version > 703 || (v:version == 703 && has('patch584'))
  function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force
      !./install.py
    endif
  endfunction
  Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
endif
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'editorconfig/editorconfig-vim'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'matchit.zip'
Plug 'tpope/vim-repeat'
" Language Additions
"   Clojure
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'tpope/vim-projectionist', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'guns/vim-slamhound', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
"   JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'coffee'] }
Plug 'matthewsimo/angular-vim-snippets', { 'for': ['javascript', 'coffee'] }
Plug 'elzr/vim-json', { 'for': 'json' }
"   HTML
Plug 'mustache/vim-mustache-handlebars', { 'for': ['html', 'hbs'] }
Plug 'othree/html5.vim', { 'for': ['html', 'hbs'] }
Plug 'indenthtml.vim', { 'for': ['html', 'hbs'] }
"   Other Languages
Plug 'ap/vim-css-color', { 'for': ['css', 'less', 'sass'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'less', 'sass'] }
Plug 'luishdez/vim-less', { 'for': 'less' }
Plug 'tpope/vim-cucumber', { 'for': ['feature', 'story'] }
Plug 'tfnico/vim-gradle', { 'for': 'gradle' }
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'samsonw/vim-task', { 'for': 'task' }
" Misc
Plug 'ryanss/vim-hackernews', { 'on': 'HackerNews' }

" Add plugins to &runtimepath
call plug#end()
