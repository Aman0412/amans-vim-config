"Source CoC configuration file
source C:\Users\amanp\AppData\Local\nvim\plug-config\coc.vim
"Source onedark colorscheme configuration file
source C:\Users\amanp\AppData\Local\nvim\themes\onedark.vim 

syntax enable 
set number
set autoindent
set scrolloff=7
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set incsearch 
set noswapfile
set ignorecase
set hlsearch
set encoding=utf-8

"Allows me to paste while in INSERT mode
inoremap <c-v> <esc>:set paste<cr>a<c-r>=getreg('+')<cr><esc>:set nopaste<cr>mi`[=`]`ia

"Vim-Plug
call plug#begin("~/.vim/plugged")

Plug 'mhinz/vim-startify'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug '/morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'

call plug#end()

"NERDTree ~ Closes NERDTree once the file has opened
let g:NERDTreeQuitOnOpen = 1
nnoremap <C-m> :NERDTreeToggle<CR>


" Ultisnips
let g:UltiSnipsSnippetDirectories=['/Users/amanp/AppData/Local/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipJumpForwardTriggerTrigger = "<tab>"
let g:UltiSnipJumpBackwardTrigger = "<s-tab>"


"C++ Syntax Highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
let g:cpp_experimental_template_highlight = 1

"Compile code 
autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -o %:r % && %:r.exe<CR>

"Setting leader key
let mapleader = " "

"Stops coc from making too many stupid syntax warnings
let b:coc_diagnostic_disable = 1
