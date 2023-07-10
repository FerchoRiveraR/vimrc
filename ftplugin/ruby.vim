" Disable ALE unless saving
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

setlocal sw=2 sts=2

" Optimizations required if you plan on open Ruby files.
setglobal regexpengine=1
setglobal ttyfast
