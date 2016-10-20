set nocompatible                " be iMproved
set encoding=utf-8

filetype off                    " required!  filetype plugin indent on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle Bundle 'gmarik/vundle' "my Bundle here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
"Bundle 'scrooloose/nerdtree'
" Bundle 'severin-lemaignan/vim-minimap'
" Bundle 'koron/minimap-vim.git'
Bundle 'altercation/vim-colors-solarized.git'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-airline/vim-airline'
Bundle 'Yggdroot/indentLine'
Bundle 'easymotion/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'honza/vim-snippets'
"
"..................................
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
Bundle 'minibufexpl.vim'
Bundle 'The-NERD-tree'
Bundle 'Tagbar'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................

set mouse=a
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set number
" set foldmethod=indent
set foldmethod=syntax
set foldcolumn=4

" colorscheme desert

set t_Co=256
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=239
" hi Folded cterm=underline ctermfg=Grey
hi Folded cterm=underline cterm=bold ctermbg=235
hi FoldColumn ctermfg=83 ctermbg=232
hi Search ctermfg=0 ctermbg=3

highlight ColorColumn ctermbg=235 guibg=#2c2d27

let &colorcolumn=join(range(81,999), ",")
set colorcolumn=81

let Tlist_Show_One_File=1
let Tlsit_Exit_OnlyWindow=1
let Tlist_Use_Right_Window = 1
"nnoremap <silent> <F8> :TlistToggle<CR>
"nnoremap <silent> <F2> :NERDTreeToggle<CR>
map <C-F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" autocmd VimEnter * TlistOpen
" autocmd VimEnter * NERDTree
autocmd VimEnter * cs add cscope.out

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_confirm_extra_conf = 0 
let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_complete_in_comments  = 1
let g:ycm_complete_in_strings  = 1
let g:ycm_add_preview_to_completeopt  = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

nnoremap gd :YcmCompleter GoToDeclaration<CR>
nnoremap gf :YcmCompleter GoToDefinition<CR>
nnoremap ge :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
nnoremap <silent> <F7> zi<CR>

let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1

set laststatus=2
set hlsearch
set incsearch
nnoremap <CR> :noh<CR><CR>

syntax enable
" set background=dark
let g:solarized_termcolors=256
" colorscheme solarized
" set guifont=Monospace\ h12

:command Wq wq
:command WQ wq
:command W w
:command Q q
:command E e
"nt to show the NERDTree
map nt :NERDTreeToggle<CR><c-l>
let NERDTreeDirArrows=0

"tl to show the tagbar
map tl :TagbarToggle<CR>


nmap <leader>f :call Astyle()<CR>

func! Astyle()
	if ( &filetype =~ 'cpp' || &filetype =~ 'c' || &filetype =~ 'java' )
		exec "!astyle -p -U --style=java --lineend=linux -T4 %"
	else
		echo "filetype not supported"
	endif
endfunc


let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplorerMoreThanOne = 0

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

let g:airline_powerline_fonts=1
