let g:ale_fix_on_save = 1

let g:ale_linters = {
	\ 'javascript': ['eslint'],
	\ 'typescript': ['prettier'],
	\ 'ruby': ['rubocop'],
	\ }

let g:ale_fixers = {
	\ 'javascript': ['prettier', 'eslint'],
	\ 'typescript': ['prettier', 'eslint', 'tslint'],
	\ 'ruby': ['rubocop'],
	\ }
