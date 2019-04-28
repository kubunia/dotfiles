" Ruby related configs

" Binding pry
nnoremap <Leader>bp orequire "pry"; binding.pry<Esc>
nnoremap <Leader>bP Orequire "pry"; binding.pry<Esc>
nnoremap <silent> <Leader>br :g/binding.pry/d<CR>
" vim:ft=vim
