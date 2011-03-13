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
set ignorecase
set hlsearch
set textwidth=150
set wrapmargin=150

filetype plugin on

"TLIST
"let Tlist_Auto_Open = 1
"let Tlist_Autestto_Update = 1
"let Tlist_GainFocus_On_ToggleOpen = 1

colorscheme vividchalk
set background=dark
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

"paste from the outside
nmap <D-V> "+gP
imap <D-V> <ESC><C-V>i
vmap <D-C> "+y

"FATBEEHIVE bk_debug function
vmap ,ds yo<ESC>ibk_debug("<ESC>hhpA;<ESC>
vmap ,d yo<ESC>ibk_debug(<ESC>hpA;<ESC>

vmap ,dse yo<ESC>ibk_debug("<ESC>hhpA;<ESC>hhi", "emile@fatbeehive.com
vmap ,de yo<ESC>ibk_debug(<ESC>hpA;<ESC>hhi, "emile@fatbeehive.com

nmap ,vs v2wh

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

