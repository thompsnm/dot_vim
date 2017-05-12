" junegunn/vim-plug/

command! ReloadVimPlug source ~/.vim/vim-plug.vim
function! PluginReloadAndRun(command)
  :ReloadVimPlug
  execute a:command
endfunction

nnoremap <Leader>pi :call PluginReloadAndRun("PlugInstall")<CR>
nnoremap <Leader>pu :call PluginReloadAndRun("PlugUpdate")<CR>
nnoremap <Leader>pc :call PluginReloadAndRun("PlugClean")<CR>
nnoremap <Leader>ps :call PluginReloadAndRun("PlugStatus")<CR>
