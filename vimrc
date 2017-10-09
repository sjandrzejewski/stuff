" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" My stuff
" -------
" solarized
Plug 'git://github.com/altercation/vim-colors-solarized.git'

" vim-latex
Plug 'git://github.com/vim-latex/vim-latex.git'

" Initialize plugin system
call plug#end()


" END OF Vim-Plug

" colorscheme

syntax enable
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme default
endif

set number

" LaTeX related

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


syntax on
filetype plugin indent on

" behaviour  
set cursorline!
nnoremap <Leader>c :set cursorline!<CR>
nnoremap <F8> :tabnew<CR>
set autowrite

" vimgrep 
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :cfirst<CR>
nnoremap ]Q :clast<CR>
nnoremap <Leader>g :copen<CR>

" spellcheck
set spelllang=en

" apperience
syntax on
set number
set foldcolumn=2
set foldlevel=99
set spell
set nohlsearch
set nowrap
set history=100
set ruler
set rulerformat=%22(%M%n\ %=%l,%c%V\ %P%)
set showcmd
set showmatch
set incsearch
set ignorecase
set display+=lastline 

set tw=0
set ts=4
set sw=4
set sts=4
set shiftwidth=4
set scrolloff=4

set autoindent
set smartindent
set expandtab
set smarttab
set wildmode=longest,list
set wildmenu
set laststatus=2

" tex related
au FileType tex setlocal spell spelllang=pl
au FileType tex set tw=79
