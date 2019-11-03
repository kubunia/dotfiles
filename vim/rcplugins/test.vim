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

" vim:ft=vim
