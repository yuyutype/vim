" [Space]: Other useful commands "{{{
" Smart space mapping.
nmap  <Space>   [Space]
xmap  <Space>   [Space]
nnoremap  [Space]   <Nop>
xnoremap  [Space]   <Nop>

" s: Windows and buffers(High priority) "{{{
" The prefix key.
nnoremap    [Window]   <Nop>
nmap    s [Window]
nnoremap <silent> [Window]p  :<C-u>vsplit<CR>:wincmd w<CR>
nnoremap <silent> [Window]o  :<C-u>only<CR>
nnoremap <silent> <Tab>      :wincmd w<CR>
nnoremap <silent><expr> q winnr('$') != 1 ? ':<C-u>close<CR>' : ""
"}}}

" Better x
nnoremap x "_x

" Sticky shift in English keyboard.
" Sticky key.
"inoremap <expr> ;  vimrc#sticky_func()
"cnoremap <expr> ;  vimrc#sticky_func()
"snoremap <expr> ;  vimrc#sticky_func()

" Easy escape.
inoremap jj           <ESC>
cnoremap <expr> j
      \ getcmdline()[getcmdpos()-2] ==# 'j' ? "\<BS>\<C-c>" : 'j'

inoremap j<Space>     j

" Better <C-]>
nnoremap <C-]> g<C-]>

if exists(':tnoremap')
  tnoremap   <ESC>      <C-\><C-n>
endif
