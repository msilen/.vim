set nocompatible
set backspace=indent,eol,start 
" Set the status line the way i like it
set stl=%f\ %m\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
"always show status
set laststatus=2

"disable all blinking
set guicursor+=a:blinkon0
set wildmenu
"set wildmodeh
set nowrap
set nu
"номера строк относительно курсора (для групповых vim комманд)
"setglobal rnu
set guifont=Terminus
"colorscheme railscasts3
colorscheme sienna
set guioptions-=T
set guioptions-=m
"remove scrollbars
set guioptions +=lrbLR
set guioptions -=lrbLR
set langmenu=en_US.UTF-8
set ic
" no confirmation on unsaved changes with buffer, it ecomes hidden
set hidden

call pathogen#infect()
syntax on
filetype plugin indent on

"undo test
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

let mapleader = ","

map <leader>gv :e ~/.vimrc
map <leader>gs :source %


"quickfix hotkey
map <leader>c :cwin 
"from habr
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set hlsearch
highlight lCursor guifg=NONE guibg=Green
"duplicate line netbeans-like
map <C-S-j> yyp

"switch language with ctrl-z
imap  
"move cursor in command mode(ex-commands)
cnoremap <A-h> <Left>
cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-l> <Right>
inoremap <C-F> <C-R>"

inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>
"paste on new line with ,p
nmap ,p o<ESC>p
"save file with CTRL-S
map <C-S> :w <CR>
"expand tab to spaces
set tabstop=2
set shiftwidth=2
set expandtab
"insert mode completion settings (wyatt video)
set complete=.,w,b,t
"NERDTree map to key
"set autochdir
let NERDTreeChDirMode=2
map <leader>n :NERDTree 
map <leader>nf :NERDTreeFind 
map <leader>nt :NERDTreeToggle 
map <leader>t :FufCoverageFile 

"from vimwiki status line coloring-------
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=orange
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=red
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=darkgreen

" default the statusline to green when entering Vim
 hi statusline guibg=darkgreen
"выбор линий находящихся на одном уровне отступа (для HAML,coffeescript,etc.)
"TODO:сделать так чтобы выбирались линии после следующей(чтобы всю функцию
"захватывать)
map <leader>i :call SelectIndent() <CR>
function! SelectIndent ()
  let temp_var=indent(line("."))
  while indent(line(".")-1) >= temp_var
    exe "normal k"
  endwhile
  exe "normal V"
  while indent(line(".")+1) >= temp_var
    exe "normal j"
  endwhile
endfun

"разбить окно вертикально и открыть альтернативный буфер
map <C-w>u :vsplit # <cr>

"поиск в хелп файле следующего тега
map <A-t> /\|.\{-}\|<cr>

"Список недавно использованных файлов (MRU)
map <leader>r :MRU
nnoremap <A-j> :RE
"backup
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
"переключаем режим нумерования линий абсолютный|относительный 
function! g:ToggleNuMode()
  if(&rnu == 1)
    set nu
  else
    set rnu
  endif
endfunc
"CTRL-L по умолчанию очищает и перерисовывает экран
nnoremap <A-l> :call g:ToggleNuMode()<cr> 
set diffopt+=iwhite
set wildmode=longest:full,list:full
"GUNDO setup
nnoremap <F5> :GundoToggle<CR>
"toggle highlight
map  <F12> :set hls!<CR>
imap <F12> <ESC>:set hls!<CR>a
vmap <F12> <ESC>:set hls!<CR>gv
"paste without indent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
