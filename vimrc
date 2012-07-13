" load pathogen and append all bundles
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
syntax on
filetype plugin indent on

" General --------------
set nocompatible " disable vi compatibility
set modelines=0 " security see http://www.techrepublic.com/blog/security/turn-off-modeline-support-in-vim/4476
set guioptions-=T " go away toolbar
colorscheme molokai
set history=500 " i like history
set laststatus=2 " statusline ftw
let mapleader = ',' " leader key
set hidden " put buffer in background without write
set timeoutlen=10000 " extra long to notice overrides
set cpoptions+=$ " indicate end of change command with $ sign
set autoread " load changed files automatically

" Searching ------------
set ignorecase " ignore case when everything is lowercase
set smartcase " case sensitive when there is a capital letter
set hlsearch " highlight

" Wildmode
set wildmode=list:longest " terminal like tab completion
set wildignore+=*/.hg/*

" ctrlp settings
let g:ctrlp_custom_ignore = {
  \ 'dir': '.git$\|.rsync_cache$\|coverage$\|log\|tmp$'
  \ }

" Tabs -----------------
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

" Invisible ------------
set list
nmap <leader>l :set list!<CR> " toogle set list
set listchars=tab:▸\ ,eol:¬ " show tabs and trailing

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" the above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/

" Mappings -------------
" disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" alternativ exit insert mode
inoremap jj <Esc>
nnoremap gp `[v`] " reselect paste

" Statusline
if has("statusline")
  set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

" maybe -----
" " Don't move on */#
" noremap * *<c-o>
" noremap # #<c-o>
"
" " Scrolling
" set scrolloff=3
"
" " Line numbers
" set rnu " relative line numbers - maybe just with a leader if too annoying?
"
" let g:netrw_liststyle=3
" let g:netrw_preview=1
