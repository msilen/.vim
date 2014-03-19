" ~/.vim/sessions/nppes.vim: Vim session script.
" Created by session.vim 1.5 on 27 February 2014 at 00:16:01.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegit
silent! set guifont=terminus\ 12
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'railscasts' | colorscheme railscasts | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/odesk/HIPS/nppes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +12 lib/nppes/update_pack/data.rb
badd +1 Rakefile
badd +1 lib/nppes.rb
badd +1 lib/nppes/update_pack/pack.rb
badd +1 lib/nppes/update_pack/base.rb
badd +1 lib/nppes/update_pack.rb
badd +320 ~/.vimrc
badd +28 ~/work/odesk/HIPS/nppes/lib/nppes/models/np_identifier.rb
badd +19 ~/work/odesk/HIPS/nppes/lib/nppes/models/np_address.rb
badd +0 lib/nppes/models/np_license.rb
silent! argdel *
set lines=63 columns=239
edit lib/nppes/update_pack/pack.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 9 + 31) / 63)
exe 'vert 1resize ' . ((&columns * 97 + 119) / 239)
exe '2resize ' . ((&lines * 12 + 31) / 63)
exe 'vert 2resize ' . ((&columns * 97 + 119) / 239)
exe '3resize ' . ((&lines * 38 + 31) / 63)
exe 'vert 3resize ' . ((&columns * 97 + 119) / 239)
exe '4resize ' . ((&lines * 14 + 31) / 63)
exe 'vert 4resize ' . ((&columns * 141 + 119) / 239)
exe '5resize ' . ((&lines * 4 + 31) / 63)
exe 'vert 5resize ' . ((&columns * 141 + 119) / 239)
exe '6resize ' . ((&lines * 4 + 31) / 63)
exe 'vert 6resize ' . ((&columns * 141 + 119) / 239)
exe '7resize ' . ((&lines * 1 + 31) / 63)
exe 'vert 7resize ' . ((&columns * 141 + 119) / 239)
exe '8resize ' . ((&lines * 34 + 31) / 63)
exe 'vert 8resize ' . ((&columns * 141 + 119) / 239)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 44 - ((3 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 046|
wincmd w
argglobal
edit lib/nppes/update_pack/pack.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 82 - ((2 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
82
normal! 033|
wincmd w
argglobal
edit lib/nppes/update_pack/pack.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 011|
wincmd w
argglobal
edit lib/nppes/update_pack/data.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((4 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 05|
wincmd w
argglobal
edit lib/nppes/update_pack/data.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 82 - ((1 * winheight(0) + 2) / 4)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
82
normal! 09|
wincmd w
argglobal
edit lib/nppes/update_pack/data.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 89 - ((1 * winheight(0) + 2) / 4)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
89
normal! 09|
wincmd w
argglobal
edit lib/nppes/update_pack/data.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 44 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 05|
wincmd w
argglobal
edit lib/nppes/update_pack/data.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((10 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 023|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 9 + 31) / 63)
exe 'vert 1resize ' . ((&columns * 97 + 119) / 239)
exe '2resize ' . ((&lines * 12 + 31) / 63)
exe 'vert 2resize ' . ((&columns * 97 + 119) / 239)
exe '3resize ' . ((&lines * 38 + 31) / 63)
exe 'vert 3resize ' . ((&columns * 97 + 119) / 239)
exe '4resize ' . ((&lines * 14 + 31) / 63)
exe 'vert 4resize ' . ((&columns * 141 + 119) / 239)
exe '5resize ' . ((&lines * 4 + 31) / 63)
exe 'vert 5resize ' . ((&columns * 141 + 119) / 239)
exe '6resize ' . ((&lines * 4 + 31) / 63)
exe 'vert 6resize ' . ((&columns * 141 + 119) / 239)
exe '7resize ' . ((&lines * 1 + 31) / 63)
exe 'vert 7resize ' . ((&columns * 141 + 119) / 239)
exe '8resize ' . ((&lines * 34 + 31) / 63)
exe 'vert 8resize ' . ((&columns * 141 + 119) / 239)
tabedit ~/work/odesk/HIPS/nppes/lib/nppes/models/np_identifier.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/work/odesk/HIPS/nppes/lib/nppes/models/np_address.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit lib/nppes/models/np_license.rb
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
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
3wincmd w

" vim: ft=vim ro nowrap smc=128
