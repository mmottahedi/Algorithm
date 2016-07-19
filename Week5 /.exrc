if &cp | set nocp | endif
map  h
let s:cpo_save=&cpo
set cpo&vim
map <NL> j
map  k
map  l
vnoremap  :nohl
nnoremap  :nohl
onoremap  :nohl
noremap  :update
vnoremap  :update
nnoremap  :update
onoremap  :update
nmap ,j <Plug>(CommandTJump)
nmap ,b <Plug>(CommandTBuffer)
nmap ,t <Plug>(CommandT)
vnoremap ,s :sort
map ,m :tabnext
map ,n :tabprevious
nnoremap ,s :update
onoremap ,s :update
noremap ,E :qa!   "Quit all window:s
noremap ,e :quit " Quit current window:
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation
nmap Q gqap
vmap Q gq
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Nul> :CtrlSpace
nnoremap <silent> <Plug>(CommandTTag) :CommandTTag
nnoremap <silent> <Plug>(CommandTSearch) :CommandTSearch
nnoremap <silent> <Plug>(CommandTMRU) :CommandTMRU
nnoremap <silent> <Plug>(CommandTLine) :CommandTLine
nnoremap <silent> <Plug>(CommandTCommand) :CommandTCommand
nnoremap <silent> <Plug>(CommandTJump) :CommandTJump
nnoremap <silent> <Plug>(CommandTHistory) :CommandTHistory
nnoremap <silent> <Plug>(CommandTHelp) :CommandTHelp
nnoremap <silent> <Plug>(CommandTBuffer) :CommandTBuffer
nnoremap <silent> <Plug>(CommandT) :CommandT
nnoremap <SNR>17_: :=v:count ? v:count : ''
map <F3> :NERDTreeToggle
map <F4> :nohl
inoremap  
inoremap  :update
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=2
set backup
set backupdir=~/.vim/backup/
set completeopt=menuone,longest,preview
set confirm
set directory=~/.vim/swap/
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set mouse=a
set pastetoggle=<F2>
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-fugitive,~/.vim/bundle/L9,~/.vim/bundle/command-t,~/.vim/bundle/sparkup/vim/,~/.vim/bundle/syntastic,~/.vim/bundle/nerdtree,~/.vim/bundle/python-mode,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/vim-devicons,~/.vim/bundle/jedi-vim,~/.vim/bundle/tmuxline.vim,~/.vim/bundle/promptline.vim,~/.vim/bundle/vim-ctrlspace,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/L9/after,~/.vim/bundle/command-t/after,~/.vim/bundle/sparkup/vim//after,~/.vim/bundle/syntastic/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/python-mode/after,~/.vim/bundle/vim-airline/after,~/.vim/bundle/vim-airline-themes/after,~/.vim/bundle/vim-devicons/after,~/.vim/bundle/jedi-vim/after,~/.vim/bundle/tmuxline.vim/after,~/.vim/bundle/promptline.vim/after,~/.vim/bundle/vim-ctrlspace/after,~/.virtualenvs/py3/lib/python3.5/site-packages/powerline/bindings/vim/
set shiftround
set shiftwidth=4
set showmatch
set noshowmode
set showtabline=2
set smartcase
set softtabstop=4
set statusline=%!py3eval('powerline.new_window()')
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabline=%!airline#extensions#tabline#get()
set tabstop=4
set tags=tags;/home/sam/.vim/tags/
set textwidth=79
set undodir=~/.vim/undo/
set visualbell
set wildignore=*.pyc
set wildmenu
" vim: set ft=vim :
