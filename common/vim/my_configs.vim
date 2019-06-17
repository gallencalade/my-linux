syntax enable
set background=dark
colorscheme solarized

if has("syntax")
  syntax on
  syntax enable
  set hlsearch
endif

filetype on

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif

set autowrite

set autoindent
set smartindent

set softtabstop=2
set tabstop=2
set shiftwidth=2
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

set linebreak
set whichwrap=b,s,<,>,[,]

set history=500
set ruler

set mouse=a
set number

setlocal textwidth=80
set listchars=tab:>-
set laststatus=2

set showcmd
set showmode

set incsearch
set nocompatible
set backspace=indent,eol,start

set foldmethod=syntax
set foldlevel=100
set foldcolumn=4

set cursorline
set cursorcolumn

set colorcolumn=80

map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F4> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

set tags=./tags
set tags+=~/.vim/tags/usr_include.tags
set tags+=~/.vim/tags/usr_local_include.tags
set tags+=~/.vim/tags/stl.tags


imap <F3> <C-X><C-O>
map <F3> <C-X><C-O>
imap <F2> <C-X><C-I>
map <F2> <C-X><C-I>


set completeopt=menu,menuone,longest
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_SelectFirstItem=2
let OmniCpp_NamespaceSearch=2
let OmniCpp_ShowPrototypeInAddr=1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_ShowScropeInAddr=1
let OmniCpp_ShowAccess=1

let Tlist_Ctags_Cmd='ctags'
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=1
let Tlist_Inc_Winwidth=0

let g:winManagerWindowLayout='FileExplorer|TagList'
let g:persistentBehaviour=0

map <F12> :WMToggle<CR>
imap <F12> <ESC>:WMToggle<CR>


let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrow=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1


map <F5> :make<CR><CR><CR> :copen<CR><CR>
imap <F5> <ESC>:make<CR><CR><CR> :copen<CR><CR>
map <F6> :cp<CR>
imap <F6> :cp<CR>
map <F7> :cn<CR>
imap <F7> :cn<CR>
map <F8> :make clean<CR><CR><CR>
imap <F8> <ESC>:make clean<CR><CR><CR>


if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

map <F9> :cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
imap <F9> <ESC>:cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR> :copen<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>


:inoremap ( ()<ESC>i
:inoremap {<CR> {}<ESC>i<CR><TAB><CR><ESC>k<END>a
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i


let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsEditSplit="vertical"


let g:rainbow_active=1


let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'
let g:NERDAltDelims_cpp=1
let g:NERDCustomDelimiters={ 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1


let g:Powerline_symbols='fancy'


:inoremap /** /**<CR> <CR><BS><BS>*/<ESC>k<END>i<DEL>
" :inoremap /*<CR> /**<CR> <CR><BS><BS>*/<ESC>k<END>i
:inoremap /*<SPACE> /*  */<ESC>2hi


set tags+=~/.vim/tags/stl.tags
set tags+=~/.vim/tags/usr_include.tags
set tags+=~/.vim/tags/usr_local_include.tags


autocmd FileType vim setlocal dict+=~/.vim/dict/vim.dict
autocmd FileType c setlocal dict+=~/.vim/dict/c.dict
autocmd FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType cxx setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType cc setlocal dict+=~/.vim/dict/cpp.dict


:highlight extraSpace ctermbg=red guibg=red
:match extraSpace /\v\s+$/


