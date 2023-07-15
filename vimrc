" Stop acting like classic vi
set history=1000            " increase history size

" Settings about files
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on
set autoindent
set backspace=indent,eol,start
set hidden

" Settings for undofiles, swapfiles, other files
set undodir=~/.vim/undodir
set undofile
set noswapfile              " don't create swapfiles
set nobackup                " don't backup, use git!

" Colorscheme configuration.
if &t_Co > 2
	syntax on
	silent! colorscheme dim
	set background=light

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	set colorcolumn=120

	" Sometimes I see the syntax be out of sync
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

set fillchars+=vert:\┊
set noshowmode
set laststatus=1
set wildmenu
set wildoptions=pum

set nowrap
set number
set showmatch
set relativenumber

" Shortcuts for switching the buffers
map <C-B>n :bnext<CR>
map <C-B>p :bprev<CR>

let mapleader=","

nmap <Leader>n :set relativenumber!<cr>
map <Leader>e :Explore<cr>
map <Leader>el :Lexplore<cr>
map <Leader>er :Lexplore!<cr>
map <Leader>et :Texplore<cr>

" Double ESC the terminal to exit terminal-job mode.
tnoremap <Esc><Esc> <C-\><C-n>
