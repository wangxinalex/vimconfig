set nocompatible                " be iMproved
set encoding=utf-8

filetype off                    " required!  filetype plugin indent on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle Bundle 'gmarik/vundle' "my Bundle here:
"
" original repos on github
Plugin 'kien/ctrlp.vim'
Plugin 'sukima/xmledit'
Plugin 'sjl/gundo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'klen/python-mode'
Plugin 'Valloric/ListToggle'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 't9md/vim-quickhl'
"Plugin 'scrooloose/nerdtree'
" Plugin 'severin-lemaignan/vim-minimap'
" Plugin 'koron/minimap-vim.git'
Plugin 'altercation/vim-colors-solarized.git'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/taglist.vim'
Plugin 'honza/vim-snippets'
"
"..................................
" vim-scripts repos
Plugin 'YankRing.vim'
Plugin 'vcscommand.vim'
Plugin 'ShowPairs'
Plugin 'SudoEdit.vim'
Plugin 'EasyGrep'
Plugin 'VOoM'
Plugin 'VimIM'
"Plugin 'minibufexpl.vim'
Plugin 'The-NERD-tree'
Plugin 'Tagbar'
Plugin 'highlightline.vim'
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
set backspace=indent,eol,start

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


"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModSelTarget=1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplorerMoreThanOne = 0

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1

nmap <C-\>s :cs f s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs f g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs f c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs f d <C-R>=expand("<cword>")<CR><CR>
