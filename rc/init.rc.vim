"---------------------------------------------------------------------------
" Initialize:
"

let s:is_windows = has('win32') || has('win64')

function! IsWindows() abort
  return s:is_windows
endfunction

function! IsMac() abort
  return !s:is_windows && !has('win32unix')
      \ && (has('mac') || has('macunix') || has('gui_macvim')
      \     || (!executable('xdg-open') && system('uname') =~? '^darwin'))
endfunction

" Use English interface.
language message C

" Use ',' instead of '\'.
" Use <Leader> in global plugin.
"let g:mapleader = ','
" Use <LocalLeader> in filetype plugin.
"let g:maplocalleader = 'm'

" Release keymappings for plug-in.
nnoremap ;  <Nop>
xnoremap ;  <Nop>
"nnoremap m  <Nop>
"xnoremap m  <Nop>
"nnoremap ,  <Nop>
"xnoremap ,  <Nop>

if IsWindows()
  " Exchange path separator.
   set shellslash
endif

