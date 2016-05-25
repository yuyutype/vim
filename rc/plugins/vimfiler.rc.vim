let g:vimfiler_as_default_explorer = 1

if IsWindows()
  " Use trashbox.
  let g:unite_kind_file_use_trashbox = 1
endif
" let g:vimfiler_readonly_file_icon = '[O]'

let g:vimfiler_quick_look_command =
      \ IsWindows() ? 'maComfort.exe -ql' :
      \ IsMac() ? 'qlmanage -p' : 'gloobus-preview'

autocmd MyAutoCmd FileType vimfiler call s:vimfiler_my_settings()
function! s:vimfiler_my_settings() abort "{{{
  " Overwrite settings.
  nnoremap <silent><buffer> J
        \ <C-u>:Unite -buffer-name=files
        \ -default-action=lcd directory_mru<CR>
  " Call sendto.
  " nnoremap <buffer> - <C-u>:Unite sendto<CR>
  " setlocal cursorline

  nnoremap <silent><buffer><expr> gy vimfiler#do_action('tabopen')
  nmap <buffer> p <Plug>(vimfiler_quick_look)
  nmap <buffer> <Tab> <Plug>(vimfiler_switch_to_other_window)

  " Migemo search.
  if !empty(unite#get_filters('matcher_migemo'))
    nnoremap <silent><buffer><expr> /  line('$') > 10000 ?  'g/' :
          \ ":\<C-u>Unite -buffer-name=search -start-insert line_migemo\<CR>"
  endif
endfunction"}}}

