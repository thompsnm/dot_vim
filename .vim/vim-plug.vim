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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'regedarek/ZoomWin', { 'on': 'ZoomWin' }
Plug 'tpope/vim-unimpaired'
" UI Additions
Plug 'edkolev/tmuxline.vim'
Plug 'jszakmeister/vim-togglecursor'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'nanotech/jellybeans.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
" Commands
Plug 'AndrewRadev/sideways.vim'
Plug 'HelpClose'
Plug 'bronson/vim-visual-star-search'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'scratch.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" Automatic Helpers
Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'Valloric/MatchTagAlways'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
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
Plug 'ap/vim-css-color', { 'for': ['css', 'less', 'sass', 'scss'] }
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'gcorne/vim-sass-lint'
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'less', 'scss'] }
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
