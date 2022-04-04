syntax on
filetype indent plugin on
set modeline
set number
set hlsearch
set sr et ts=4 sw=4 ft=python
highlight Normal guibg=#EDECE0 ctermbg=232
execute pathogen#infect()
autocmd BufWritePost *.py call Flake8()
