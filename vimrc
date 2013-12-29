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
set mouse=a        " Enable mouse usage (all modes)
set hlsearch
set nu
colorscheme blackbeauty
set autoindent
set ai
set shiftwidth=2
set tabstop=2
set expandtab
set statusline=%F%m%r%h%w\ -----------------------------------------------------------------------------------------------\ [\ Format=%{&ff}\ ]\ [\ Filetype=%Y\ ]\ [\ ASCII=\%03.3b\ ]\ [\ Pos=%04l,\ %04v\ ]\ [\ %p%%\ ]\ [\ Length=%L\ ]
set laststatus=2

set runtimepath=/usr/share/vim/vim74
let $VIMRUNTIME="/usr/share/vim/vim74"


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType ruby set omnifunc=rubycomplete#Complete

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  
set nocp

filetype off  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on     " required!
