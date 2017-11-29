" ==================
" = ~~~  VIMRC ~~~ =
" ==================

" ============================
" = ~~~ GENERAL SETTINGS ~~~ =
" ============================

" Turn Off Vi:
set nocompatible
filetype off

" Filetype Auto Detection:
filetype plugin indent on

" Syntax Highlighting:
syntax on

" Hidden Option:
set hidden

" Better Command Line Completion:
set wildmenu

" Show Partial Commands In Last Line Of Screen:
set showcmd

" General Tab And Indent Settings:
set tabstop=2
set shiftwidth=2
set softtabstop=2
" Use spaces instead of tabs
set expandtab
" Let's tab key insert 'tab stops', and bksp deletes tabs
set smarttab
" Tab / shifting moves to closest tabstop
set shiftround
" Match indents on new lines
set autoindent
" Indent Lines for tabs
" set list lcs=tab:\│\ 
" Intellegently dedent / indent new lines based on rules
" DEPRECATED
" set smartindent

" Tab And Indent Settings For Full Stack Development:
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Tab And Indent Settings For Python:
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Allow Backspacing Over Autoindent Line Breaks And Start Of Insert Action:
set backspace=indent,eol,start

" Stop Certain Movements From Always Going To First Characters:
set nostartofline

" Splits:
" Specify different areas of the screen where splits should occur
set splitbelow
set splitright

" Enable Folding:
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
" NOTE: Use za to fold and unfold


" We Have Vcs We Do Not Need Backups:
set nobackup
set nowritebackup

" No Swapfiles:
set noswapfile

" Live Match Highlighting:
set showmatch

" Use The G Flag By Default:
set gdefault

" Allow The Cursor To Go Anywhere In Visual Block Mode:
set virtualedit+=block

" Enable Line Numbers:
set number

" Display The Cursor Position:
set ruler

"Always Display The Status Line:
set laststatus=2

" Dialogue To Confirm Unsaved Changes:
set confirm

" Command Window Height:
set cmdheight=2

" Color Scheme:
set background=dark
:colorscheme ir_black

" Enable Mouse:
if has('mouse')
   set mouse=a
   endif

" Clipboard
set clipboard=unnamed

" Search Settings:
set incsearch
set ignorecase
set smartcase
" Highlight search results
set hlsearch
" Highlight matching brackets
set showmatch
nmap /q :nohlsearch<CR>


" ====================
" = ~~~ KEYMAPS: ~~~ =
" ====================

" LEADER:
" ========
" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
let mapleader = " "


" NMAPS:
" =======
" Set j and k to to move down/ up on a row basis instead of line
nmap j gj
nmap k gk

" NOREMAPS:
" ==========

" NNOREMAPS:
" ===========
" Set Ctrl-normal vim movements to travel between splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Set <Leader>t to toggle NERDTree
nnoremap <Leader>t :NERDTreeToggle<Enter>

" IMAPS:
" =======

" Set Ctrl-c to exit insert mode
imap <C-L> <Esc>

" VMAPS:
" =======


" ===================
" = ~~~ VUNDLE  ~~~ =
" ===================

" NOTE: Pathogen (Disabled. Use vundle instead)
execute pathogen#infect()
" NOTE: Figure out which of these are plugins and which are bundles

" VUNDLE SETTINGS:
" =================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Allows you to specify bundles in the following format:
" 'githubUsername/repoName'
call vundle#rc()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" PLUGINS:
" =========
"
" NOTE: Specify Plugins in the following format:
"  'githubUsername/reponame
" NOTE: Remember to close vim and run :PluginInstall after adding new plugins.

" Let Vundle Manage Vundle Required:
  Plugin 'gmarik/Vundle.vim'

" Startify
  Plugin 'mhinz/vim-startify'

" NERDTree:
  Plugin 'scrooloose/nerdtree'
" NERDTree  Settings:
" Open a NERDTree automatically when vim starts up
  autocmd vimenter * NERDTree
" Open a NERDTree automatically when vim starts up if no files were specified
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open NERDTree automatically when vim starts up on opening a directory
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Make NERDTree pretty
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
" NOTE: Use <Leader>-t to toggle NERDTree
 
" NERDTree Git Flags:
  Plugin 'Xuyuanp/nerdtree-git-plugin'

" SCSS Syntax:
  Plugin 'cakebaker/scss-syntax.vim'

" Indent Lines:
" TODO: This doesn't work. Need to recompile vim with the conceal option.
" NOTE: See here: https://superuser.com/questions/708245/re-compile-vim-with-options
  Plugin 'Yggdroot/indentLine'
" Indent Lines Settings:
" Enable indent lines:
  set conceallevel=2
  let g:indentLine_enabled = 1
"Change conceal behavior (I'm not exactly sure what this does?):
  let g:indentLine_concealcursor = 'inc'
  let g:indentLine_conceallevel = 2
" Lines follow color scheme:
" let g:indentLine_setColors = 0
  let g:indentLine_color_term = 239
" Indent character:
  let g:indentLine_char = '│' 

" Folding:
  Plugin 'tmhedberg/SimpylFold'
" Folding Settings:
" See docstrings for folded code:
  let g:SimpylFold_docstring_preview=1
" NOTE: Use za in normal mode to toggle fold.

" Git Wrapper:
  Plugin 'tpope/vim-fugitive'

" NOTE: All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required


" BUNDLES:
" =========
"
" NOTE: Specify bundles in the following format:
" 'githubUsername/reponame'
"
" NOTE: Remember to close vim and run :BundleInstall after adding new bundles.

" Some Colorschemes:
  Bundle 'flazz/vim-colorschemes'

" Syntastic:
  Bundle 'vim-syntastic/syntastic'
" Syntastic Settings:
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_auto_jump = 0

" Fuzzy Finder:
  Bundle 'kien/ctrlp.vim'

" Toggle Comments:
  Bundle 'tpope/vim-commentary'
" NOTE: Use gc in visual mode to comment out selection

" Surround:
  Bundle 'tpope/vim-surround'
" NOTE: Use ysiw+( (, {, <, ", ', [, etc ) in normal mode to surround
" NOTE: Use S+( (, {, <, ", ', [, etc) in visual mode to surround

" Align Tabs:
  Bundle 'godlygeek/tabular'
" NOTE: Use :Tabularize + regexp to align text.

" BUG: Not working.
" Multiple Cursors:
" Bundle 'terryma/vim-multiple-cursors'

" JSON:
  Bundle 'leshill/vim-json'

" Javascript:
  Bundle 'pangloss/vim-javascript'

" HTML Indent:
  Bundle 'indenthtml.vim'

" Markdown:
  Bundle 'tpope/vim-markdown'

" Less:
  Bundle 'groenewege/vim-less'
