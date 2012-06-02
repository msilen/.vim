set nocompatible
set backspace=indent,eol,start 
" Set the status line the way i like it
set laststatus=2
"set statusline=%f\ %m\ Pos[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set statusline=%f\ %m\ Pos[%p%%]\ Col:%v\ Buf:#%n 

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
set ignorecase
" no confirmation on unsaved changes with buffer, it ecomes hidden
set hidden

call pathogen#infect()
call yankstack#setup()
syntax on
filetype plugin indent on

"undo test
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

let mapleader = ","

noremap <leader>gv :e ~/.vimrc
noremap <leader>gs :source %


"quickfix hotkey
noremap <leader>c :cwin 
"from habr
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set incsearch
set hlsearch
highlight lCursor guifg=NONE guibg=Green
"duplicate line netbeans-like
noremap <C-S-j> yyp

"switch language with ctrl-z
inoremap  
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
noremap ,p o<ESC>p
"save file with CTRL-S
noremap <C-S> :w <CR>
"scroll page half screen up with CTRL-E
noremap <C-E> <C-U>

"expand tab to spaces
set tabstop=2
set shiftwidth=2
set expandtab
"insert mode completion settings (wyatt video)
set complete=.,w,b,t
"NERDTree map to key
"set autochdir
let NERDTreeChDirMode=2
noremap <leader>n :NERDTree 
noremap <leader>nf :NERDTreeFind 
noremap <leader>nt :NERDTreeToggle 
"FuzzyFinder mappings
"noremap <leader>t :FufCoverageFile 
"noremap <leader>fr :FufBuffer 
"noremap <leader>fq :FufQuickfix 

"Command-T mappings
nnoremap <silent> <Leader>fr :CommandTBuffer<CR>

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
noremap <leader>ss :call SelectIndent() <CR>
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
noremap <C-w>u :vsplit # <cr>

"поиск в хелп файле следующего тега
noremap <A-t> /\|.\{-}\|<cr>

"Список недавно использованных файлов (MRU)
noremap <leader>m :MRU
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
set wildmode=list:full
"GUNDO setup
nnoremap <F5> :GundoToggle<CR>
"toggle hlsearch highlight
noremap  <F12> :set hls!<CR>
imap <F12> <ESC>:set hls!<CR>a
vmap <F12> <ESC>:set hls!<CR>gv
"paste without indent
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
"смена цветовых схем sienna и railscasts 3
noremap <leader>cr :colors railscasts3
map <leader>cs :colors sienna
"normal key maps
noremap Y y$
"let g:EasyMotion_leader_key = '<Leader>'
"easy motion find word to alt-w
"map <A-w> ,,w
map <Space> ,,w
"map <Space> :
noremap  <Plug>yankstack_substitute_older_paste
noremap <C-S>p <Plug>yankstack_substitute_older_paste
"resize windows with +- keys
"arrow keys to resize windows
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
  map <left> <C-w><
  map <right> <C-w>>
endif
"from steve losh's article
set scrolloff=3
set showcmd
"set visualbell
"set cursorline
"substitution applies on all lines by default
set gdefault
set smartcase
set showmatch
"set colorcolumn=85
noremap <leader><tab> <c-w>v<c-w>l :Scratch<cr>
noremap <leader><tab>q :Scratch<cr>
noremap <f10> 0y$ : <c-r>"
"showmarks settings
let g:showmarks_enable=0
"rainbowparenthesis
noremap <leader>r :RainbowParenthesesToggle<cr>
inoremap jj jQuery
xmap s S
noremap va" va"olo
set list
set listchars=tab:▸\
nnoremap / /\v
vnoremap / /\v
set cursorline
set wrap linebreak
"delimitMate settings
let delimitMate_expand_cr = 1
"Zen-Coding vim custom settings
let g:user_zen_leader_key = '<a-e>'
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:CommandTMatchWindowAtTop=1
