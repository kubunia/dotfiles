nnoremap <Leader>fa :Files app/<CR>
nnoremap <Leader>fm :Files app/models/<CR>
nnoremap <Leader>fc :Files app/controllers/<CR>
nnoremap <Leader>fv :Files app/views/<CR>

fun! s:load_rails_projections()
  if g:is_rails && !exists('g:rails_projections')
    let g:rails_projections = projections#load_projections('rails')
    autocmd User ProjectionistActivate :call projections#set_projections('rails')
  endif
endfun

autocmd User ProjectionistDetect :call s:load_rails_projections()
