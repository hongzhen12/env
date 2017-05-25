"colorscheme molokai
set t_Co=256
if has("cscope")
" set csprg=/usr/bin/cscope
  set csto=0
  set cst
  set nocsverb
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb

  nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

  nmap <C-\><C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\><C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\><C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\><C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\><C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-\><C-\>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-\><C-\>i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-\><C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

  set tags=tags;
  set autochdir
endif

set nu
set hlsearch
set cursorline
hi CursorLine cterm=NONE ctermbg=Black
set cindent
set autoindent
set expandtab
" for make file, using 4 spaces instead of tab
autocmd FileType make set noexpandtab
set tabstop=4
set shiftwidth=4
" for python file, using 2 spaces instead of 4 spaces
autocmd FileType python setlocal shiftwidth=2 tabstop=2


set showmatch
set matchtime=2

set scrolloff=5

set laststatus=2
""set statusline=[%F]%*%=\ \ \ %l/%L\ \ \ %p%%\
""let g:Powerline_symbols='unicode'

set incsearch

:inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(‘)‘)<CR>
:inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair(‘}‘)<CR>
:inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(‘]‘)<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
"set mouse=a
""""""""""""""""""""""vundle manage vim plugins""""""""""""""""""""""""""""
set nocompatible              " be iMproved

set rtp+=~/.vim/bundle/Vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/syntastic'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'bling/vim-airline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'ShowTrailingWhitespace'
filetype plugin indent on     " required!
set guifont=Liberation\ Mono\ for\ Powerline\ 10

let g:airline_powerline_fonts=0
let g:airline#extensions#whitespace#enabled=0
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = "/home/hongzhen/.vim/bundle/.ycm_extra_conf.py"
""let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
""let g:ycm_cache_omnifunc=0
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

set completeopt=longest,menu
"set clipboard=unamedplus
"autocmd VimLeave * call system("xsel -ib", getreg('+'))

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

nmap    w=  :resize +3<CR>
nmap    w-  :resize -3<CR>
nmap    w,  :vertical resize -3<CR>
nmap    w.  :vertical resize +3<CR>

syntax on

