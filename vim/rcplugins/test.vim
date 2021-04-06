" Test runner

Plug 'janko/vim-test'
Plug 'tpope/vim-dispatch'

let test#strategy = "vtr"

nmap <silent> <Leader>tt :TestNearest<CR>
nmap <silent> <Leader>tf :TestFile<CR>
nmap <silent> <Leader>ts :TestSuite<CR>
nmap <silent> <Leader>tl :TestLast<CR>
nmap <silent> <Leader>tv :TestVisit<CR>

let test#strategy = {
  \ 'nearest': 'vtr',
  \ 'file': 'vtr',
  \ 'suite': 'dispatch',
\}

let g:auto_run_test = 0

function AutoRunTest() abort
  let g:auto_run_test = !(g:auto_run_test)

  echo 'Test auto-run ' . (g:auto_run_test ? 'ENABLED' : 'DISABLED')
endfunction

augroup test
  autocmd!
  autocmd BufWrite * if g:auto_run_test && test#exists() |
    \   TestFile |
    \ endif
augroup END

nnoremap <leader>ta :call AutoRunTest()<CR>

" vim:ft=vim
