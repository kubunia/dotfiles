" Ruby related configs

" Binding pry
nnoremap <Leader>bp orequire "pry"; binding.pry<Esc>
nnoremap <Leader>bP Orequire "pry"; binding.pry<Esc>
nnoremap <silent> <Leader>br :g/binding.pry/d<CR>

fun! s:project_root()
  if exists('b:rails_root')
    return b:rails_root
  else
    let git_dir = finddir('.git/..', expand('%:p:h').';')

    if (git_dir)
      return git_dir
    else
      return getcwd()
    endif
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
  elseif root == 'lib'
    return parts[1: -1]
  else
    return parts
  endif
endfun

fun! ruby#class_name(...)
  try
    let path = s:file_path()
    let parts = s:extract(path)
  catch
    finish
  endt

  call map(parts, {idx, val -> substitute(val, '\(_\|^\)\(.\)', '\u\2', 'g') })

  if a:0 > 0
    echo 'asd'
    return parts
  else
    echo 'ff'
    return join(parts, '::')
  endif
endfun

command CreateSpec :vs spec/%:r_spec.rb

" vim:ft=vim
