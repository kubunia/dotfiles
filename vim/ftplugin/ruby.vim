" Ruby related configs

" Binding pry
nnoremap <Leader>bp orequire "pry"; binding.pry<Esc>
nnoremap <Leader>bP Orequire "pry"; binding.pry<Esc>
nnoremap <silent> <Leader>br :g/binding.pry/d<CR>

let g:rails_projections = projections#load_projections('rails')

augroup ruby
  autocmd!
  autocmd User ProjectionistDetect :call projections#set_projections('rails')
augroup end

" vim:ft=vim
