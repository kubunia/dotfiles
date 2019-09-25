let s:base_dir = matchstr(resolve(expand("<sfile>:p:h")), '\(.*\)/')
let s:projections_dir = s:base_dir . 'projections/'

fun! projections#load_projections(name)
  let l:json = readfile(s:projections_dir . a:name . '.json')

  return projectionist#json_parse(l:json)
endfunction

function! projections#set_projections(name)
  call projectionist#append(getcwd(), projections#load_projections(a:name))
endfunction
