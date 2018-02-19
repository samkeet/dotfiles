syn on
set number
set expandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype java setlocal ts=4 sts=4 sw=4
autocmd Filetype go setlocal ts=4 sts=4 sw=4 autoindent
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 autoindent
autocmd Filetype py setlocal ts=4 sts=4 sw=4 autoindent
autocmd Filetype c setlocal ts=4 sts=4 sw=4 autoindent
autocmd Filetype sh setlocal ts=4 sts=4 sw=4 autoindent
autocmd Filetype ksh setlocal ts=4 sts=4 sw=4 autoindent
autocmd Filetype rb setlocal ts=2 sts=2 sw=2 autoindent
autocmd Filetype json  setlocal ts=2 sts=2 sw=2 autoindent

" Remap to exit edit mode
inoremap jj <esc>
inoremap jk <esc>

set background=dark
set nowrap
set ruler
" Jump to last known possition
if has("autocmd")
 au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Yaml syntax highligth
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

