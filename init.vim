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
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"python
let g:python3_host_prog = '/usr/local/bin/python3'

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
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
noremap <F3> :NERDTreeToggle<CR>

"indentline相关
let g:indentLine_enabled = 1
let g:indentLine_char='┆'

"airline相关
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"coc相关
set hidden
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

