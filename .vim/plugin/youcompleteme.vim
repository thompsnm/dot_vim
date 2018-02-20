"Valloric/YouCompleteMe

let g:ycm_disable_for_files_larger_than_kb = 1000
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['css,less,sass,scss' ] = ['re!:\s+']
