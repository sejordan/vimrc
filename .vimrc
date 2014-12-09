set notextauto

syntax on

set tabstop=2
set shiftwidth=2
set expandtab

set statusline=\ [%f%*]\ %y\ %=[%P:\ ln\ %l/%L]\ [col\=%c]\
set laststatus=2

set hlsearch

autocmd BufNewFile,BufRead *.less set filetype=css

highlight TrailingWhiteSpace ctermbg=red ctermfg=white
match TrailingWhiteSpace / \+$/

nmap <C-N> :set invnumber<CR>
highlight LineNr ctermbg=NONE ctermfg=white
