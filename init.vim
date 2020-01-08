set number
set tabstop=4
set autoindent
set wrap
set linebreak
set ruler
set nobackup

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'KeitaNakamura/neodark.vim'
Plug 'Yggdroot/indentLine'
call plug#end()

"设置leader键
let mapleader=" "

"主题颜色
colorscheme neodark
let g:neodark#use_256color = 1
let g:neodark#background = '#000000'

"格式化Json
noremap <LEADER>fj :%!python -m json.tool<CR>

"退出命令行
:tnoremap <Esc> <C-\><C-n>

"NERDtree相关
noremap <F3> :NERDTreeToggle<CR>

"indentline相关
let g:indentLine_enabled = 1
let g:indentLine_char='┆'

"airline相关
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"coc相关
set hidden
set cmdheight=2
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
