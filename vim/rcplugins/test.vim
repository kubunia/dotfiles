" Test runner

Plug 'janko/vim-test'
Plug 'tpope/vim-dispatch'

let test#strategy = "vtr"

nmap <silent> <Leader>tt :TestNearest<CR>
nmap <silent> <Leader>tf :TestFile<CR>
nmap <silent> <Leader>ts :TestSuite<CR>
nmap <silent> <Leader>tl :TestLast<CR>
nmap <silent> <Leader>tv :TestVisit<CR>

map <silent> <F9> :call test#SwapTestRunner()<CR>

function! test#SwapTestRunner()
  if (g:test#strategy == 'vtr')
    let g:test#strategy = "dispatch"
    :echo 'Test Runner set to dispatch'
  else
    let g:test#strategy = "vtr"
    :echo 'Test Runner set to vtr'
  endif
endfunction

" vim:ft=vim
