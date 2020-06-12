if(!&modifiable)
  nmap czu 1czw
  nmap czs :Git stash save<SPACE>
  nmap cRe :Git reset --soft HEAD^<CR>
endif
