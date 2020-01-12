noremap q <NOP>

noremap qb :OrgCheckBoxNewBelow<CR>
noremap qa :OrgCheckBoxNewAbove<CR>
noremap qq :OrgCheckBoxToggle<CR>

autocmd BufWinEnter <buffer> silent! TableModeEnable
