" ======================= plugins ==============
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
" ======================= mapping ==============
map <C-n> :NERDTreeToggle<CR> " nerdtreeToggle



" ======================= nerdtree ==============
autocmd vimenter * NERDTree " 自动开启Nerdtree
let NERDTreeShowBookmarks=1 " 开启Nerdtree时自动显示Bookmarks
let g:NERDTreeHidden=0  " 不显示隐藏文件
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" 关闭vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ======================= ctrlp ==============
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'