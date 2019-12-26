fun! s:load_rails_projections()
  if !exists('g:rails_projections')
    let g:rails_projections = projections#load_projections('rails')
    autocmd User ProjectionistActivate :call projections#set_projections('rails')
  endif
endfun

autocmd User ProjectionistDetect :call s:load_rails_projections()
