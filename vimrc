set nocompatible

call plug#begin("~/.vim/plugged")

Plug 'ayu-theme/ayu-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'danro/rename.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ehamberg/vim-cute-python'
Plug 'enricobacis/vim-airline-clock'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'jmcantrell/vim-virtualenv'
Plug 'kien/rainbow_parentheses.vim'
Plug 'lervag/vimtex'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rstacruz/vim-remux'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'skywind3000/asyncrun.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'
Plug 'tshirtman/vim-cython'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'
Plug 'KabbAmine/zeavim.vim'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer --system-libclang'}
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

set number
syntax on
filetype on
filetype plugin on
filetype indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set cindent
set smartindent
set expandtab
set smarttab

set hlsearch
set incsearch
set smartcase
set showmatch

set foldlevel=99
set foldmethod=indent

set showmode
set wildmenu
set laststatus=2
set splitbelow
set mouse=a
set autoread
set autowrite
set guifont=Input\ Nerd\ Font\ Mono\ Extra-Condensed\ 14

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"let ayucolor="mirage"
"let ayucolor="dark"
"colorscheme ayu
colorscheme gruvbox
set background=dark
"hi Normal guibg=NONE ctermbg=NONE


au BufRead,BufNewFile *.h set filetype=c

map <F2> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <F3> :TagbarToggle<CR>


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["bundle/vim-snippets/UltiSnips", "bundle/ultisnips/UltiSnips"]

"let g:airline_theme='angr'
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:remux_key = '<F8>'

"autocmd BufEnter * lcd %:p:h

noremap <F4> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_python_flake8_options='--ignore=E712,E711'
let g:ale_python_pylint_options = '-d missing-docstring'

let g:vimtex_view_method='mupdf'


set undofile
set undodir=~/.vim/undo

if executable('ag')
    "let g:ackprg = 'ag --vimgrep'
    let g:grepprg = 'ag --nogroup --nocolor'
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
    let g:ctrlp_use_caching = 0
endif

nnoremap <C-f> :CtrlSF<Space>
"let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_default_view_mode = 'normal'
