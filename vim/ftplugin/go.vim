" Better display for messages
set cmdheight=2

map <leader>bb  <Plug>(go-build)
map <leader>rr  <Plug>(go-run)

map <leader>gg :call VtrGoRun("%")<CR>
map <leader>ga :call VtrGoRun()<CR>

" Execute binary with absoulte path to avoid conflict with git alias
let test#go#gotest#executable = FindBin('go') . ' test'

fun! VtrGoRun(...)
  let cmd = 'VtrSendCommandToRunner /usr/bin/go run'

  if a:0 > 0
    let cmd = cmd . ' ' .  expand(join(a:000, ' '))
  else
    let cmd = cmd . ' .'
  endif

  execute cmd
endfun
