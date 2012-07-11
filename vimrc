" load pathogen and append all bundles
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
syntax on
filetype plugin indent on

" General --------------
set nocompatible " disable vi compatibility
set modelines=0 " security see
http://www.techrepublic.com/blog/security/turn-off-modeline-support-in-vim/4476
set guioptions-=T " go away toolbar
colorscheme BusyBee
set history=500 " i like history
set laststatus=2 " statusline ftw
let mapleader = ',' " leader key
set hidden " put buffer in background without write
set timeoutlen=10000 " extra long to notice overrides
set cpoptions+=$ " indicate end of change command with $ sign

" Searching ------------
set ignorecase " ignore case when everything is lowercase
set smartcase " case sensitive when there is a capital letter

" Invisible ------------
set list
nmap <leader>l :set list!<CR> " toogle set list
set listchars=tab:▸\ ,eol:¬ " show tabs and trailing
 
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
