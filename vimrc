" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! archlinux.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd        " Show (partial) command in status line.
"set showmatch        " Show matching brackets.
"set ignorecase        " Do case insensitive matching
"set smartcase        " Do smart case matching
"set incsearch        " Incremental search
"set autowrite        " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned

" enable mouse
set mouse=a

" highlight search results
set hlsearch

" set line numbers
set nu

" set colorscheme
colorscheme blackbeauty

" set indentation
set autoindent
set ai
set shiftwidth=2
set tabstop=2
set expandtab

" display status bar
set statusline=%F%m%r%h%w\ -----------------------------------------------------------------------------------------------\ [\ Format=%{&ff}\ ]\ [\ Filetype=%Y\ ]\ [\ ASCII=\%03.3b\ ]\ [\ Pos=%04l,\ %04v\ ]\ [\ %p%%\ ]\ [\ Length=%L\ ]
set laststatus=2

" set vim runtime
set runtimepath=/usr/share/vim/vim74
let $VIMRUNTIME="/usr/share/vim/vim74"

" ctags config
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  

" Vundle setups
set nocp

filetype off  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"Bundle 'Valloric/YouCompleteMe'

Bundle "tpope/vim-surround"

Bundle "SirVer/ultisnips"

Bundle "scrooloose/syntastic"

Bundle "tpope/vim-repeat"

filetype plugin indent on     " required!
