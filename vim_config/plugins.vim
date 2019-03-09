set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'suan/vim-instant-markdown'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dkprice/vim-easygrep'
Plugin 'ConradIrwin/vim-bracketed-paste'

" for development
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
" for python development
Plugin 'heavenshell/vim-pydocstring'
Plugin 'Vimjas/vim-python-pep8-indent'
" for javascript development
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'alvan/vim-closetag'         " auto close html tags
Plugin 'Valloric/MatchTagAlways'    " always match html tags
Plugin 'leafgarland/typescript-vim'
"Plugin 'garbas/vim-snipmate'

" theme and color
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin indent on    " required



"""" Ctrl-P setting
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""" NerdTree setting
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""" Tern setting
map <leader>td :TernDef<cr>
map <leader>tD :TernDoc<cr>
map <leader>tt :TernType<cr>
map <leader>tr :TernRefs<cr>
map <leader>tR :TernRename<cr>


"""" YouCompleteMe setting
set completeopt-=preview


"""" Jsx syntax
let g:jsx_ext_required = 0  " Allow JSX in normal JS files


"""" Airline setting
" turn on powerline symbols
let g:airline_powerline_fonts = 1
" set airline theme
let g:airline_theme='solarized'
let g:airline_solarized_bg='light'
" show all buffers when there's only 1 tab
let g:airline#extensions#tabline#enabled = 1

"""" Solarized theme
syntax enable
set background=light
colorscheme solarized


"""" Syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8', 'pylint']
" flake8 setting
let g:syntastic_python_flake8_post_args="--max-line-length=120"
let g:syntastic_python_flake8_args="--ignore=E402"
" pylint setting
let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:syntastic_python_pylint_args="--generated-members=pyspark.sql.functions.*,F.* --disable=wrong-import-position,invalid-name,broad-except,no-member,too-many-locals"


""""" Pydocstring setting
nmap <silent> <leader>ds <Plug>(pydocstring)


"""" commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

"""" git setting
set updatetime=500
