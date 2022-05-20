autocmd FileType java setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType go setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType py setlocal shiftwidth=4 softtabstop=4 expandtab

lua require('config')

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set breakindent
set number
set numberwidth=2
set norelativenumber
set cpoptions+=n
set signcolumn=yes
set updatetime=250
set smartcase
set undofile
set cul
set ignorecase
set scrolloff=3
set completeopt=menu,menuone,noselect
set termguicolors

let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" supress error during setup
let g:material_style = 'material'
silent! colorscheme material

let g:vimsyn_embed = 'l'

nmap <silent> // :nohlsearch<CR>

" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

nnoremap <leader><leader> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <leader>ff :Format<CR>

nnoremap <leader>S :lua require('spectre').open()<CR>

vmap "y "*y
nmap "y "*y
nmap "Y "*Y
nmap "p "*p
nmap "P "*P

" Split Navigation
nnoremap <leader>h :split<Space>
nnoremap <leader>v :split<Space>

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" TODO: improve n+1 line moving by russian keys
nnoremap <expr> л (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> о (v:count == 0 ? 'gj' : 'j')

