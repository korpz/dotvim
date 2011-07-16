"EMILES VIMRC
"pathogen has to be called before filetype detection
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set tabstop=4
set shiftwidth=4
"set showmatch
set guioptions-=T
set vb t_vb=
set ruler
"set nohls
set incsearch
set virtualedit=all
set nocompatible
set autoindent
set smartindent
set smartcase
set autochdir
set ignorecase
set hlsearch
set textwidth=150
set wrapmargin=150
set history=1000
set list
set noswapfile
let mapleader = ","
let g:yankring_window_use_bottom = 0
let g:yankring_window_height = 15
filetype plugin on

"TLIST
"let Tlist_Auto_Open = 1
"let Tlist_Autestto_Update = 1
"let Tlist_GainFocus_On_ToggleOpen = 1

set t_Co=256
colorscheme wombat256
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

"Bubble multiple lines - cool
vmap <C-Up> xkPz[V`]
vmap <C-Down> xp`[V`]

"escape to normal mode
inoremap jj <ESC>

"source vim file when saving
if has("autocmd")
 autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Source config for wordpress
source ~/my_vimpress.vimrc

"FATBEEHIVE bk_debug function
vmap ,bs yo<ESC>ibk_debug("<ESC>hhpA;<ESC>
vmap ,b yo<ESC>ibk_debug(<ESC>hpA;<ESC>
vmap ,bse yo<ESC>ibk_debug("<ESC>hhpA;<ESC>hhi", "emile@fatbeehive.com
vmap ,be yo<ESC>ibk_debug(<ESC>hpA;<ESC>hhi, "emile@fatbeehive.com

"FATBEEHIVE bk_debug function
nmap ,bn :BlogNew<CR>
nmap ,bsp :BlogSave publish<CR>
nmap ,bl :BlogList<CR>

"nerd tree toggle
nmap ,c<SPACE> :NERDComToggleComment<CR>

"die function
vmap ,d yo<ESC>idie(<ESC>hpA;<ESC>
nmap ,d yo<ESC>idie(<ESC>hpA;<ESC>

"echo function
vmap ,es yo<ESC>iecho<SPACE>"<ESC>hpA;<ESC>
vmap ,e yo<ESC>iecho<SPACE><ESC>pA;<ESC>
"
" Folding and unfolding
"map ,f :set foldmethod=indent<cr>zM<cr>
"map ,F :set foldmethod=manual<cr>zR<cr>

" Shortcut to rapidly toggle `set list`
nmap ,l :set list!<CR>

" Search forward with f key
noremap ,f ;

"select a variable
nmap ,ss :set spell!<cr>

"select a variable
nmap ,vs v2wh

"save
nmap ,w :w!<CR>

"copy to system clipboard
nmap ,y "+y
vmap ,y "+y

"set line numbers
nmap ,n :set number!<CR>

"set line numbers
nmap ,nt :NERDTreeToggle<CR>

"paste from system clipboard
nmap ,p "+p
vmap ,p "+p

"quit
nmap ,q :q!<CR>

"Yankring plugin
nnoremap ,r :YRShow<CR> 

"source vimrc 
nmap ,s :source ~/.vimrc<CR>

"Taglist toggle
nmap ,t :TlistToggle<CR>

"scroll down
nmap <SPACE> 10j
 
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:❤
"
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"switching between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"php cheat for tags
autocmd FileType php let b:surround_45 = "<?php \r ?>"
let g:user_zen_leader_key= '<c-a>'

"show cursor lines"
"hi CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgreen ctermfg=white guibg=darkred guifg=white
nnoremap ,z :set cursorline! cursorcolumn!<CR>

function! WordFrequency() range
  let all = split(join(getline(a:firstline, a:lastline)), '\A\+')
  let frequencies = {}
  for word in all
    let frequencies[word] = get(frequencies, word, 0) + 1
  endfor
  new
  setlocal buftype=nofile bufhidden=hide noswapfile tabstop=20
  for [key,value] in items(frequencies)
    call append('$', key."\t".value)
  endfor
  sort i
endfunction
command! -range=% WordFrequency <line1>,<line2>call WordFrequency()

"Abbreviations
iab pnd £
