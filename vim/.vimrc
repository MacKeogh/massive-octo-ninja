set nocompatible "Vundle requires it be first line
"set viminfo=' . fnamemodify(expand("$MYVIMRC"), ":p:h") . "/.viminfo"
execute 'set runtimepath^=' . expand('~/dotfiles/vim/.vim')
execute 'set runtimepath+=' . expand('~/dotfiles/vim')
filetype off "required by Vundle
" set the runtime path to include Vundle
set runtimepath+=~/dotfiles/vim/.vim/bundle/Vundle.vim
if has('win64') || has('win32')
  call vundle#begin('~/vimfiles/bundle')
else
  call vundle#begin('~/.vim/bundle')
endif
" Keep Plugin commands between vundle#begin/end.
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" plugin on GitHub repo
Plugin 'endel/vim-github-colorscheme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on "required by Vundle
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set autoindent    " always set autoindenting on
set background=dark
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backup "yes, I want to do backups!
set backupdir-=. " removes the current directory from the backup directory list
set backupdir^=~/Temp/ " if the user's Temp dir doesn't exsit, then uses the computer's temp dir
set cmdheight=1
set copyindent    " copy the previous indentation on autoindenting
set diffopt=filler,vertical
set directory=~/Temp/ " if the user's Temp dir doesn't exsit, then uses the computer's temp dir
set expandtab
set fileformats=unix,dos,mac "'mac' refers to before OS X
set hidden "hide a buffer when opening a new buffer
set history=5000
set hlsearch      " highlight search terms
set ignorecase    " ignore case when searching
set incsearch     " show search matches as you type
set noerrorbells " do not beep
set nowrap        " don't wrap lines
set number        " always show line numbers
set pastetoggle=<F2> "paste text without auto indenting
set relativenumber "show relative number of lines between blocks
set ruler
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=2  " number of spaces to use for autoindenting
set shortmess=aAfilnxtToOI "short message on the startup screen
set showmatch     " set show matching parenthesis
set showmode
set smartcase     " ignore case if search pattern is all lowercase, "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to "    shiftwidth, not tabstop
set tabstop=2     " a tab is four spaces
set undolevels=5000
set verbose=0 "stop making me press return
set viminfo+=n~/dotfiles/vim/.viminfo
set visualbell " visual, rather than audio bell
set wildignore=*.swp,*.bak,*.pyc,*.class
let mapleader="," " change the mapleader from \ to ,
filetype indent on
filetype on
syntax on
syntax enable
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
silent !<command>
if !exists("autocommands_loaded")
  let autocommands_loaded = 1
  autocmd VimLeave * if v:dying | echo "\nAbend!\n" | endif
  if &verbose == 0
    augroup late-verbose
      autocmd VimEnter * set verbose=0
      autocmd VimLeave * set verbose=0
    augroup END
  endif
endif
colorscheme github
" colorscheme emacs
" colorscheme MickeySoft
" colorscheme buttercream
" colorscheme eclipse
" colorscheme borland

" CUSTOM FUNCTIONS
" Pad : string integer -> string
 "  Pad('abc', 5) == 'abc  '
 "  Pad('ab', 5) ==  'ab   '
function! Pad(s,amt)
    return a:s . repeat(' ',a:amt - len(a:s))
endfunction

" PrePad : string integer [character] -> string
"   PrePad('832', 4)      == ' 823'
"   PrePad('832', 4, '0') == '0823'
function! PrePad(s,amt,...)
    if a:0 > 0
        let char = a:1
    else
        let char = ' '
    endif
    return repeat(char,a:amt - len(a:s)) . a:s
endfunction

""source ~/vimfiles/makemenu.vim

source ~/.vim_local/vimosconfig.vim

" Initialize VIM to my ~ directory
" cd ~

" set runtimepath^=~/vimfiles/plugin/ctrlp.vim

" :scriptnames

" Enable BClose plugin
nmap <C-W>! <Plug>Kwbd
