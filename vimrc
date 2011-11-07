set nocompatible
set showcmd
set hidden
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set nu
set hlsearch
set incsearch
set title
set ignorecase 
set smartcase
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showmatch
set cindent
set history=1000
set makeprg=make\ -j\ 5

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/swp
colorscheme zenburn


" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp


" OmniCppComplete
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_LocalSearchDecl = 1
" " automatically open and close the popup menu / preview window
au BufNewFile,BufRead,BufEnter *.cpp,*.h set omnifunc=omni#cpp#complete#Main
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" set background color for omnicomplete preview window
" highlight Pmenu ctermbg=brown gui=bold

" Taglist settings
let Tlist_Use_Right_Window = 1

" mappings
map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F2> :NERDTree<CR>
map <F3> :TlistToggle<CR>
