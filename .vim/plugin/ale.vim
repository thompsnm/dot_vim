"w0rp/ale

" Only validate on save
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = "never"

let g:airline#extensions#ale#enabled = 0

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '%severity%: %linter%: %s'
