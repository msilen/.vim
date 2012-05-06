" ~/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.5 on 06 Май 2012 at 03:36:12.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegit
silent! set guifont=Terminus
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'railscasts' | colorscheme railscasts | endif
call setqflist([{'lnum': 109, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/javascripts/temp.js.coffee', 'text': '  #window.update_sums = ->'}, {'lnum': 23, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/assets/javascripts/application.js', 'text': 'function update_sums(){'}, {'lnum': 3, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/wishes/orders/destroy.js.erb', 'text': 'update_sums();'}, {'lnum': 10, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/wishes/orders/update.js.erb', 'text': '	update_sums();'}, {'lnum': 11, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/wishes/orders/create.js.erb', 'text': '	update_sums();'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/bbcopy/2304/listwish
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +107 ~/.vimrc
badd +23 app/assets/javascripts/application.js
badd +121 app/assets/javascripts/temp.js.coffee
badd +31 app/views/delivery_addresses/_fields.html.erb
badd +10 app/views/wishes/orders/destroy.js.erb
badd +144 app/views/orders/show.html.erb
badd +4 __Scratch__
badd +10 app/views/wishes/orders/_wish.html.erb
badd +9 app/assets/stylesheets/event-addmore.css
silent! argdel *
set lines=53 columns=170
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/work/bbcopy/2304/listwish
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w
let s:bufnr = bufnr("%")
cwindow
execute "bwipeout" s:bufnr
tabnext 1
1wincmd w

" vim: ft=vim ro nowrap smc=128
