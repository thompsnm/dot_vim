" --------------------
" Plugin Configuration
" --------------------

" See plugins directory for most config.
" What's here does not load correctly from there.

"
" dansomething/vim-eclim
"
let g:EclimCompletionMethod = 'omnifunc'
let g:EclimMavenPomClasspathUpdate = 0
let g:EclimMakeLCD = 1
let g:EclimMakeLCDWarning = 0
let g:EclimDefaultFileOpenAction = 'vsplit'
let g:EclimShowQuickfixSigns = 1
let g:EclimValidateSortResults = 'severity'
let g:EclimJavascriptValidate = 0
" Disable Eclim logging (stop JSL missing error)
let g:EclimLogLevel = 'off'
" See .ftplugin/java.vim for mappings
