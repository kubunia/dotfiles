fun! s:project_root()
  if exists('b:rails_root')
    return b:rails_root
  else
    return finddir('.git/..', expand('%:p:h').';')
  endif
endfun

fun! s:file_path()
  return matchlist(expand('%:p:r'), s:project_root() . '/\(.*\)')[1]
endfun

fun! s:extract(path)
  let parts = split(a:path, '/')
  let root = parts[0]

  if root == 'app'
    return parts[2: -1]
  elseif root == 'spec'
    let parts[-1] = substitute(parts[-1], '_spec', '', '')

    return parts[2: -1]
  else
    return parts[1: -1]
  endif
endfun

fun! naming#class_name(...)
  try
    let path = s:file_path()
    let parts = s:extract(path)
  catch
    finish
  endt

  call map(parts, {idx, val -> substitute(val, '\(_\|^\)\(.\)', '\u\2', 'g') })

  if a:0 > 0
    return parts
  else
    return join(parts, '::')
  endif
endfun
