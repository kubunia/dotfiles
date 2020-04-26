if(!&modifiable)
  nmap czu :Git stash -u<CR>
  nmap czs :Git stash save<SPACE>
  nmap cRe :Git reset --soft HEAD^<CR>
endif
