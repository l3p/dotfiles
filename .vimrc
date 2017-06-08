if !has('packages')  " no packaging in vim<8: fallback to pathogen
  runtime pack/main/opt/vim-pathogen/autoload/pathogen.vim
  runtime pack/main/opt/vim-solarized8/colors/solarized8_dark.vim
  execute pathogen#infect()
endif

" Make true color work also in tmux.
" Those variabled are filled automatically only when $TERM=xterm.
" But in tmux, $TERM=screen so we have to set them manually.
" See :help xgerm-true-color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set termguicolors
colorscheme solarized8_dark

set hlsearch
set ignorecase smartcase

set expandtab

set shiftwidth=0  " 0 means use tabstop
set tabstop=2

set cursorline
set showtabline=2
set winwidth=79
set colorcolumn=80
set mouse=a

if !has('nvim')
  set ttymouse=xterm2  " enable dragging inside tmux
endif

set number

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set nofoldenable

let mapleader=","

" makes CommandT much faster and as a nice side effect, in git repos
" gitignored files are hidden
let g:CommandTFileScanner="git"
let g:netrw_list_hide='.pyc$'

set statusline=%<%f\ %y%w%q%m%r\ %k%=[%{&fileencoding}-%{&fileformat}]\ 0x%B\ \ %l,%c%V\ %o\ %O\ %P

autocmd BufNewFile,BufRead Vagrantfile setfiletype ruby
autocmd BufNewFile,BufRead *.t setfiletype cram
autocmd BufNewFile,BufRead *.html setfiletype htmldjango

autocmd FileType ruby map <leader>b Orequire "pry" ; binding.pry<esc>
