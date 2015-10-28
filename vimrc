
set backup                    " make backups
set backupdir=~/.vim/backup   " use a central folder for bkups
set directory=~/.vim/tmp      " central tmp folder

set showcmd

set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

set textwidth=79
set formatoptions+=t

filetype on
filetype plugin on
filetype plugin indent on
syntax enable

colorscheme base16-atelierforest
set background=dark

autocmd filetype python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd filetype make setlocal noexpandtab
autocmd filetype javascript nnoremap <buffer> <localleader>c :Neomake jshint<CR>

" map <C-p> :w<CR>:!python %<CR>
" imap <C-p> <ESC>:w<CR>:!python %<CR>

" filetype plugin indent on

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set colorcolumn=80
set clipboard=unnamed,unnamedplus
set mouse=a
set ruler
set number
set scrolloff=10
set cursorline
set printoptions=paper:a4
set laststatus=2

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

set magic

set showmatch

set guifont=Sauce\ Code\ Powerline:h13"Inconsolata:h15
set guioptions-=T
set lines=55 columns=175

nnoremap <localleader>h <C-w>h
nnoremap <localleader>j <C-w>j
nnoremap <localleader>k <C-w>k
nnoremap <localleader>l <C-w>l

let g:airline_powerline_fonts = 1
"let g:ycm_path_to_python_interpreter = '/Users/mcnamara/anaconda/bin/python'
"let g:python_host_prog = '/Users/mcnamara/anaconda/bin/python'

let g:ycm_path_to_python_interpreter = '/usr/local/Cellar/python/2.7.10_2/bin/python'
let g:python_host_prog = '/usr/local/Cellar/python/2.7.10_2/bin/python'
let g:ycm_key_list_previous_completion=['<Up>']

let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let test#javascript#mocha#options = "--ui tdd"
nmap <silent> <localleader>t :TestNearest<CR>
nmap <silent> <localleader>T :TestSuite<CR>

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
    let g:airline#extensions#tabline#enabled = 1
endif

execute pathogen#infect()
