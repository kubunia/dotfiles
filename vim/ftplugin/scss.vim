function scss#format()
  let x = col('.')
  let y  = line('.')

  call CocAction('format')
  execute "%!stylelint --fix" | redraw!
  echo "Formatted by Prettier + StyleLint"

  call cursor(y, x)
endfunction

nmap <buffer> <silent> <leader>p :call scss#format()<CR>
setlocal iskeyword+=-
