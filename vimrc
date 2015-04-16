""""""" Pathogen Settings 
let g:pathogen_disabled = []

if hostname() != "jhoodhpw7"
    call add(g:pathogen_disabled, "perforce")
endif

call pathogen#infect()
call pathogen#helptags()

""""""" Helper Methods
function! SetTabWidth(size)
    execute "set ts=".a:size
    execute "set shiftwidth=".a:size
    execute "set softtabstop=".a:size
    set expandtab
endfunction

""""""" General Vim Configuration
set nocompatible
syntax on
set mouse =a
set backspace =2
call SetTabWidth(4)
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set nobackup
set nowritebackup
set noswapfile
set hidden
set autoread
set laststatus=2
set showtabline=2
set noshowmode

""""""" Theme Configuratoin 
set t_Co=256
colorscheme twilight 

""""""" Filetype-Specific Settings

" Make
autocmd FileType make setlocal noexpandtab

" Scala
autocmd FileType scala call SetTabWidth(2) 

" Groovy 
autocmd FileType yaml call SetTabWidth(2) 

" Groovy 
au BufNewFile,BufRead *.gradle setf groovy

"""""" gVim configuration
if has("gui_running")
    set guioptions+=c
endif

"""""" NERDTree Configuration
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle <CR>

"""""" Ctrl-P Configuration
set wildignore+=*.class
set wildignore+=*.pyc
let g:ctrlp_cmd = 'CtrlP getcwd()'

