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
"set autochdir
set ignorecase
set hlsearch
set textwidth=150
set wrapmargin=150
set history=1000
set nolist
set noswapfile
let mapleader = ","
let g:yankring_window_use_bottom = 0
let g:yankring_window_height = 15
let g:EasyMotion_do_shade = 1

filetype plugin on

"TLIST
"let Tlist_Auto_Open = 1
"let Tlist_Autestto_Update = 1
"let Tlist_GainFocus_On_ToggleOpen = 1

set t_Co=256
let g:zenburn_high_Contrast=1
let g:molokai_original=1
colorscheme molokai
syntax on

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

"php die function
vmap ,d yo<ESC>idie(<ESC>hpA;<ESC>
nmap ,d yo<ESC>idie(<ESC>hpA;<ESC>

"echo function
vmap ,es yo<ESC>iecho<SPACE>"<ESC>hpA;<ESC>
vmap ,e yo<ESC>iecho<SPACE><ESC>pA;<ESC>

" FUFBUFFER AWESOMENESS
"buffer list
nnoremap <silent> <leader>f :FufBuffer<CR>

"buffer file
nnoremap <silent> <leader>ff :FufFile<CR>

"Files in current working directory
nnoremap <silent> <leader>fc :FufFileWithCurrentBufferDir<CR>

"Files in current working directory
nnoremap <silent> <leader>fC :FufFileWithFullCwd<CR>

"Files in current working directory
nnoremap <silent> <leader>fh  :FufHelp<CR>
"--END FUFBUFFER

" Shortcut to rapidly toggle `set list`
nmap ,l :set list!<CR>

" Search forward with f key
noremap ,, ;

"select a variable
nmap ,ss :set spell!<cr>

"select a variable
nmap ,vs v2wh

"save
nmap ,w :w!<CR>

"EASY MOTION
let g:EasyMotion_mapping_f = ',ef'
let g:EasyMotion_mapping_F = ',eF'
let g:EasyMotion_mapping_T = ',eT'
let g:EasyMotion_mapping_t = ',et'
let g:EasyMotion_mapping_b = ',eb'
let g:EasyMotion_mapping_B = ',eB'
let g:EasyMotion_mapping_E = ',eE'
let g:EasyMotion_mapping_w = ',ew'
let g:EasyMotion_mapping_W = ',eW'
let g:EasyMotion_mapping_e = ',ee'
let g:EasyMotion_mapping_k = ',ek'
let g:EasyMotion_mapping_j = ',ej'

"copy to system clipboard
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

"Abbreviations
iab pnd £

"Dbext plugin profile FOR dbext plugin
let g:dbext_default_profile_mysql_local= 'type=MYSQL:user=kp:passwd=corpse:driver=mysql'

"Dbext plugin show 15 lines db output
let g:dbext_default_buffer_lines = 15

"Dbext plugin display results vertical
let  g:dbext_default_DBI_orientation = 'vertical'

let g:window_use_horiz = 0
let g:window_use_bottom = 0
let g:window_use_right = 1
