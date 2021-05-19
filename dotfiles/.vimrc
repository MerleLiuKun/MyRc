syntax enable   " the color highlighting.

set showmatch  " highlight {} | () | [] etc.

set nu                         " 行号
set cursorline                 " 高亮所在行

set tabstop=4
set shiftwidth=4
set softtabstop=0              " 关闭 softtabstop
set expandtab

set mouse=a                    " 支持鼠标
set laststatus=2               " 状态行
set backspace=2                " 删除键的问题

" search
set ignorecase
set smartcase

filetype on
filetype indent on
set autoindent
set smartindent
set shiftround

set scrolloff=3


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" use F3 to open the nerdtree
nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
