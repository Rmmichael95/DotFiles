" Maintainer: Ryan M Sullivan
" Last Change: December 20, 2018
" ------------------------------------------------------------------------------
" Vim Configuration
" ------------------------------------------------------------------------ " {{{1

for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor
