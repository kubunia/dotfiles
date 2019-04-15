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
Plug 'tpope/vim-bundler'                                                        " Bundler integration
Plug 'alvan/vim-closetag'                                                       " Tags autoclose
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

set wildmenu
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
set stl+=%{ConflictedVersion()}
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
let g:closetag_filenames = '*.erb, *.js, *.jsx'
let g:surround_no_insert_mappings = 1

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
noremap <backspace> <nop>

" Maps
map <C-c> :BD<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
vnoremap <C-u> U
inoremap <C-d> <DEL>

nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <silent> <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <silent> <leader>= :wincmd =<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
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

nnoremap <silent> <C-g> :m .+1<CR>==
nnoremap <silent> <C-t> :m .-2<CR>==
vnoremap <silent> <C-g> :m '>+1<CR>gv=gv
vnoremap <silent> <C-t> :m '<-2<CR>gv=gv

nnoremap <Leader>ss :%s/\<<C-r><C-w>\>//g<Left><Left>
vnoremap <Leader>ss :s//g<Left><Left>

" Plug maps
nnoremap <silent> <leader>r :w<CR> :RuboCop -a<CR>
map <Leader>bt :HardTimeOff<CR> :DelimitMateOff<CR> <Plug>BlockToggle :DelimitMateOn<CR> :HardTimeOn<CR>
nnoremap <leader>. :CtrlPTag<cr> hi IndentGuidesOdd  ctermbg=black
nnoremap <leader><leader> :Buffers<CR>
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
  autocmd FileType javascript UltiSnipsAddFiletypes javascript-es6-react
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
let g:spec_runner_dispatcher = 'call VtrSendCommand("bundle exec {command}")'
map <Leader>t <Leader>vnor :wincmd _<cr>:wincmd \|<CR> <Plug>RunCurrentSpecFile
map <Leader>u <Leader>vnor :wincmd _<cr>:wincmd \|<CR> <Plug>RunFocusedSpec
map <Leader>y <Leader>vnor :wincmd _<cr>:wincmd \|<CR> <Plug>RunMostRecentSpec

" VTR
nnoremap <leader>vnor :noautocmd :VtrOpenRunner {'orientation': 'h', 'percentage': 50}<CR>
nnoremap <leader>vr :VtrOpenRunner {'orientation': 'h', 'percentage': 50}<CR>
nnoremap <leader>vk :VtrKillRunner<CR>
nnoremap <leader>vs :VtrSendLinesToRunner<CR>
vnoremap <leader>vs :VtrSendLinesToRunner<CR>
nnoremap <leader>vf :VtrFocusRunner<CR>
nnoremap <leader>va :call VtrAttach(n:count)
nnoremap <silent> <leader>va :<C-u>call VtrAttach(v:count)<cr>
nnoremap <leader>vc :VtrSendCommand 

function! VtrAttach(arg)
  execute ':VtrAttachToPane '.a:arg
endfunction

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

  nnoremap <Leader>f :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
endif

" Binding pry
nnoremap <leader>bp orequire "pry"; binding.pry<esc>
nnoremap <leader>bP <up> orequire "pry"; binding.pry<esc>
nnoremap <silent> <leader>br :g/binding.pry/d<cr>
nnoremap <silent> <leader>bi :<C-u>call InsertBindingPry(v:count)<cr>

function! InsertBindingPry(args)
  execute ':'+ a:args
  normal! Orequire "pry"; binding.pry
endfunction

" Custom functions
function! RemoveLines(arg)
  execute ':'.substitute(a:arg, ' ', ',', '')."d | ''"
endfunction
nnoremap <silent> <leader>x :set nornu<cr>:call RemoveLines('')<left><left>

function! MoveLines(arg)
  execute ':'.substitute(a:arg, ' ', ',', '').'m.'
endfunction
nnoremap <silent> <leader>m :set nornu<cr>:call MoveLines('')<left><left>

autocmd CmdlineLeave * :call TurnOnRnu()

function! TurnOnRnu()
  if (&nu == 1)
    set rnu
  endif
endfunction

let g:rails_projections = {
      \  "app/controllers/*_controller.rb": {
      \      "test": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \      "alternate": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \   },
      \   "spec/requests/*_spec.rb": {
      \      "command": "request",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \ }
