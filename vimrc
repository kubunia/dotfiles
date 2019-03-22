call plug#begin('~/.vim/plugged')
Plug 'nanotech/jellybeans.vim'                                                  " Color scheme
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }              " Fuzzy search
Plug 'junegunn/fzf.vim'                                                         " Fzf vim
Plug 'tpope/vim-surround'                                                       " Surround text
Plug 'kchmck/vim-coffee-script'                                                 " Mainly syntax highlighting
Plug 'pangloss/vim-javascript'                                                  " JS syntax highlighting
Plug 'mxw/vim-jsx'                                                              " JSX/React syntax highlighting
Plug 'ervandew/supertab'                                                        " Autocomplete with <tab>
Plug 'nathanaelkane/vim-indent-guides'                                          " Visualy shows indent
Plug 'ctrlpvim/ctrlp.vim'                                                       " File search in project
Plug 'raimondi/delimitmate'                                                     " Automatic closing quotes etc.
Plug 'tpope/vim-endwise'                                                        " Auto ending blocks
Plug 'tpope/vim-commentary'                                                     " Commenting stuff
Plug 'airblade/vim-gitgutter'                                                   " Git lines status
Plug 'tpope/vim-repeat'                                                         " Support repeat (.) for plugins
Plug 'qpkorr/vim-bufkill'                                                       " Easy buffor killing
Plug 'easymotion/vim-easymotion'                                                " Extends motions
Plug 'ap/vim-buftabline'                                                        " Buffers as tabs
Plug 'tpope/vim-sleuth'                                                         " Handles with identations
Plug 'vim-airline/vim-airline'                                                  " Status bar template
Plug 'tpope/vim-fugitive'                                                       " Git in vim
Plug 'scrooloose/nerdtree'                                                      " File system explorer
Plug 'Xuyuanp/nerdtree-git-plugin'                                              " Nerdtree with git markers
Plug 'ngmy/vim-rubocop'                                                         " Rubocop
Plug 'gabebw/vim-spec-runner'                                                   " Rspec runner
Plug 'christoomey/vim-tmux-navigator'                                           " Synchronize moving with tmux
Plug 'christoomey/vim-tmux-runner'                                              " TMUX runner
Plug 'christoomey/vim-conflicted'                                               " Handling with git conflicts
Plug 'vim-ruby/vim-ruby'                                                        " Ruby stuff
Plug 'tpope/vim-rails'                                                          " Rails stuff
Plug 'pbrisbin/vim-mkdir'                                                       " Creates directories before save
Plug 'vim-scripts/blockle.vim'                                                  " Change ruby block
Plug 'kana/vim-textobj-user'                                                    " Custom text objects
Plug 'nelstrom/vim-textobj-rubyblock'                                           " Ruby text objects
Plug 'SirVer/ultisnips'                                                         " Snippets engine
Plug 'honza/vim-snippets'                                                       " Snippets
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }                          " Autoformat files on save
Plug 'takac/vim-hardtime'
call plug#end()
let g:hardtime_default_on = 1

hi TabLineFill cterm=none ctermfg=grey  ctermbg=cyan
hi TabLine     cterm=none ctermfg=white ctermbg=cyan
hi TabLineSel  cterm=none ctermfg=cyan ctermbg=white
hi IndentGuidesEven ctermbg=darkgrey
set completeopt-=preview
syntax on
colorscheme jellybeans
runtime macros/matchit.vim

set nocompatible
set number relativenumber
set backspace=indent,eol,start
set history=10000
set showcmd
set showmode
set guicursor=a:blinkon0
set visualbell
set vb t_vb=
set autoread
set clipboard=unnamedplus
set hidden
set list
set timeoutlen=1000 ttimeoutlen=0
set noswapfile
set nobackup
set nowb
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set incsearch
set hlsearch
set ignorecase
set smartcase
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set foldmethod=manual
set list listchars=tab:\ \ ,trail:·
set linebreak
let mapleader=" "
let g:airline#extensions#branch#enabled = 1
let g:prettier#autoformat = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:blockle_mapping = '<NOP>'
let g:vimrubocop_keymap = 0
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_inside_quotes = 1

highlight OverLength ctermbg=88 ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Remap ESC
nnoremap <silent> <C-Space> <Esc>:noh<CR>
vnoremap <C-Space> <Esc>gV
onoremap <C-Space> <Esc>
cnoremap <C-Space> <C-c>
inoremap <C-Space> <Esc>
nnoremap <silent> <C-@> <Esc>:noh<CR>
vnoremap <C-@> <Esc>gV
onoremap <C-@> <Esc>
cnoremap <C-@> <C-c>
inoremap <C-@> <Esc>

" Unmap
nnoremap Q <nop>
nnoremap q <nop>

" Maps
map <C-c> :BD<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
vnoremap <C-u> U
inoremap <C-x> <DEL>

nnoremap <leader>sub :%s//g<left><left>
vnoremap <leader>sub :s//g<left><left>
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <silent> <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <silent> <leader>= :wincmd =<cr>
nnoremap <leader>bp orequire "pry"; binding.pry<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>; :
nnoremap <leader>w <esc>:w<CR>
nnoremap <leader>q <esc>:q<CR>

nnoremap H ^
nnoremap L $
nnoremap 0 ^
nmap j gj
nmap k gk

onoremap in( :<c-u>normal! f(vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

nmap <silent> <M-k> :move -2<CR>
nmap <silent> <M-j> :move +1<CR>

" Plug maps
nnoremap <leader>ra :w<CR> :RuboCop -a<CR>
nnoremap <silent> <leader>ru :RuboCop <CR>
map <Leader>bt :HardTimeOff<CR> :DelimitMateOff<CR> <Plug>BlockToggle :DelimitMateOn<CR> :HardTimeOn<CR>
nnoremap <leader>. :CtrlPTag<cr> hi IndentGuidesOdd  ctermbg=black
nnoremap <leader>, :Buffers<CR>
nmap s <Plug>(easymotion-s)
nmap q <Plug>(easymotion-overwin-f2)
imap <expr> <C-q> delimitMate#JumpAny()

" File specific
filetype plugin on
filetype indent on

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_autocompletes
    autocmd!
    autocmd FileType python :iabbrev <buffer> iff if:<left>
    autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END

" AutoCMD
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
autocmd VimResized * :wincmd =

" TMUX
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

" RSpec
let g:spec_runner_dispatcher = 'call VtrSendCommand("{command}")'
map <Leader>t <Leader>vnor :wincmd _<cr>:wincmd \|<CR> <Plug>RunCurrentSpecFile
map <Leader>u <Leader>vnor :wincmd _<cr>:wincmd \|<CR> <Plug>RunFocusedSpec
map <Leader>v <Leader>vnor :wincmd _<cr>:wincmd \|<CR> <Plug>RunMostRecentSpec

" VTR
nnoremap <leader>vnor :noautocmd :VtrOpenRunner {'orientation': 'h', 'percentage': 50}<CR>
nnoremap <leader>vr :VtrOpenRunner {'orientation': 'h', 'percentage': 50}<CR>
nnoremap <leader>vk :VtrKillRunner<CR>
nnoremap <leader>vs :VtrSendLinesToRunner<CR>
nnoremap <leader>vf :VtrFocusRunner<CR>
nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=3
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

nnoremap <leader>d :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
nnoremap <leader>D :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>

augroup nerdtreebindings
  autocmd!
  autocmd FileType nerdtree map <buffer> <C-c> <NOP>
  autocmd FileType nerdtree map <buffer> <C-f> <NOP>
  autocmd FileType nerdtree map <buffer> <C-p> <NOP>
  autocmd FileType nerdtree map <buffer> <leader>x <NOP>
  autocmd FileType nerdtree nnoremap <buffer> <Tab> <NOP>
augroup END


iabbrev init initialize

if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0

  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
endif

" Meta-keys fix
for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor
