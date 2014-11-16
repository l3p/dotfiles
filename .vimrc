runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"load vim-sensible now, so that I can override what it does
runtime! plugin/sensible.vim

" let g:solarized_termcolors=256 " uncomment for degraded 256-color palette

let g:solarized_visibility="low" " for :set list

set background=dark
colorscheme solarized

set hlsearch
set ignorecase smartcase

set expandtab
autocmd FileType ruby,haml,eruby,yaml,html,xml,javascript,sass,cucumber,java,sh,css set sw=2 sts=2 ts=2
autocmd BufNewFile,BufRead Vagrantfile setf ruby

set cursorline
set showtabline=2
set winwidth=79
set colorcolumn=80
set mouse=a
set ttymouse=xterm2  " enable dragging inside tmux

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set nofoldenable

let mapleader=","

let g:netrw_list_hide= netrw_gitignore#Hide()

" makes CommandT much faster and as a nice side effect, in git repos
" gitignored files are hidden
let g:CommandTFileScanner="git"

" this is annoying while editing other people's code.
" I still expect git to fix whitespace problems in my changes.
" I will need some sort of autocommand to disable trimming on other people's
" code.
" let g:pymode_trim_whitespaces = 0

" delete buffer, but keep the split
map <leader>d :bp\|bd #<cr>
