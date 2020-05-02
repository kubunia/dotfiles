function css#format()
  let x = col('.')
  let y  = line('.')

  call CocAction('format')
  execute "%!stylelint --fix" | redraw!
  echo "Formatted by Prettier + StyleLint"

  call cursor(y, x)
endfunction

nnoremap <buffer> <silent> <leader>p :call css#format()<CR>

setlocal iskeyword+=-
