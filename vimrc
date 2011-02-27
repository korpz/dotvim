set tabstop=4
set shiftwidth=4
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
"set nohls
set incsearch
set virtualedit=all
set nocompatible
set autoindent
set smartindent

"TLIST
"let Tlist_Auto_Open = 1
"let Tlist_Auto_Update = 1
"let Tlist_GainFocus_On_ToggleOpen = 1

colorscheme vividchalk
set background=dark
set hlsearch
syntax on
"let g:molokai_original=1

"Bubble single lines
nmap <C-UP> ddkP
nmap <C-Down> ddp
noremap ; :s/\([^;]\)$/\1;/<CR>

"phpdoc
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 

map <D-y> "+yy

"Bubble multiple lines
vmap <C-Up> xkPz[V`]
vmap <C-Down> xp`[V`]

"escape to normal mode
inoremap jj <ESC>

"source vim file when saving
if has("autocmd")
 autocmd bufwritepost .vimrc source $MYVIMRC
endif

"paste from the outside
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

"switching between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Folding and unfolding
map ,f :set foldmethod=indent<cr>zM<cr>
map ,F :set foldmethod=manual<cr>zR<cr>

"Invisible character colors
highlight NonText guifg=#ffffff
highlight SpecialKey guifg=#ffffff

"php cheat for tags
autocmd FileType php let b:surround_45 = "<?php \r ?>"
let g:user_zen_leader_key= '<c-a>'
