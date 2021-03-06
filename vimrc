""""""" Pathogen Settings 
let g:pathogen_disabled = []

if ! executable("p4")
    call add(g:pathogen_disabled, "perforce")
endif

call pathogen#infect()
call pathogen#helptags()

""""""" Helper Methods
function! SetTabWidth(size)
    execute "set tabstop =".a:size
    execute "set softtabstop =".a:size
    execute "set shiftwidth =".a:size
    set expandtab
endfunction

""""""" General Vim Configuration
set nocompatible
syntax on
set mouse =a
set backspace =2
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
set paste
call SetTabWidth(4)

""""""" Theme Configuratoin 
set t_Co=256
colorscheme twilight 

""""""" Filetype-Specific Settings

" Make
autocmd FileType make setlocal noexpandtab

" Scala
autocmd FileType scala call SetTabWidth(2) 

" YAML 
autocmd FileType yaml call SetTabWidth(2) 

" Gradle 
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
set wildignore+=venv
set wildignore+=node_modules
let g:ctrlp_cmd = 'CtrlP getcwd()'
let g:ctrlp_max_files = 0

