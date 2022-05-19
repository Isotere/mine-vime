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

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" TODO: improve n+1 line moving by russian keys
nnoremap <expr> л (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> о (v:count == 0 ? 'gj' : 'j')

