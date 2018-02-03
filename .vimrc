" Maintainer: Ryan M Sullivan
" Last Change: February 1, 2018

" ------------------------------------------------------------------------------
" Vim Configuration
" ------------------------------------------------------------------------ " {{{

if has('vim_starting')
    if &compatible
        set nocompatible       " Be iMproved
    endif
endif

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" ========{ Plugins }===================================================== " {{{

" --------[ Dein ]------------------------------------ {{{

if &compatible
    set nocompatible
endif

set runtimepath+=/home/ryanm/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/ryanm/.nvim/bundles')
    call dein#begin('/home/ryanm/.nvim/bundles')
    call dein#add('/home/ryanm/.nvim/bundles/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('zchee/deoplete-clang')
    call dein#add('zchee/libclang-python3')
    call dein#add('Shougo/neoinclude.vim')
    call dein#add('artur-shaik/vim-javacomplete2')
    call dein#add('zchee/deoplete-jedi')
    call dein#add('davidhalter/jedi')
    call dein#add('Shougo/vimproc.vim', {
                \ 'build' : {
                \     'linux' : 'make',
                \     'unix' : 'gmake',
                \    },
                \ })
    call dein#add('Shougo/vimshell.vim')
    call dein#add('Shougo/neomru.vim')
    call dein#add('Shougo/unite.vim')
    call dein#add('tpope/vim-endwise')
    call dein#add('tpope/vim-commentary')
    call dein#add('tpope/vim-repeat')
    call dein#add('tpope/vim-dispatch') " Used with vim-tags
    call dein#add('radenling/vim-dispatch-neovim') " dispatch nvim support
    call dein#add('tpope/vim-fugitive') " for help with c tags and git/buffer handling ...
    call dein#add('tpope/vim-surround')
    call dein#add('jiangmiao/auto-pairs')
    call dein#add('neomake/neomake')
    " general refactoring
    call dein#add('derekwyatt/vim-protodef')
    call dein#add('LucHermitte/lh-vim-lib')
    call dein#add('LucHermitte/lh-tags')
    call dein#add('LucHermitte/lh-dev')
    call dein#add('LucHermitte/lh-brackets')
    call dein#add('LucHermitte/vim-refactor')
    "call dein#add('zowens/vim-eclim')
    "call dein#add('JulioJu/Eclim-for-Neovim')
    call dein#add('dbgx/lldb.nvim')
    call dein#add('godlygeek/tabular')
    call dein#add('majutsushi/tagbar') " taskbar with indexed ctags
    call dein#add('jeffkreeftmeijer/vim-numbertoggle') " Toggle absolute and relative line numbers
    call dein#add('ntpeters/vim-better-whitespace') " Whitespace hightlighting
    call dein#add('christoomey/vim-tmux-navigator') " Unified tmix pane vim split navigation
    call dein#add('easymotion/vim-easymotion')
    call dein#add('wincent/command-t', {
                \ 'build_commands' : ['make', 'ruby'],
                \ 'build' : {
                \	'unix': 'cd ruby/command-t/ext/command-t && {make clean; ruby extconf.rb && make }'
                \  }
                \})
    call dein#add('wincent/ferret')
    call dein#add('mileszs/ack.vim')
    call dein#add('mbbill/undotree', {'on': 'UndotreeToggle'})
    call dein#add('scrooloose/nerdtree', {'on':['NERDTreeToggle','NERDTreeFind']})
    call dein#add('Xuyuanp/nerdtree-git-plugin', {'on':['<Plug>NERDTreeToggle','<Plug>NERDTreeFind']})
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('thoughtbot/vim-rspec')
    call dein#add('zhaocai/GoldenView.Vim', {'on':'<Plug>ToggleGoldenViewAutoResize'})
    call dein#add('SirVer/ultisnips')
    call dein#add('powerman/vim-plugin-viewdoc')
    "call dein#add('garbas/vim-snipmate')
    "call dein#add('MarcWeber/vim-addon-mw-utils')
    call dein#add('jgdavey/tslime.vim')
    call dein#add('qpkorr/vim-bufkill')
    call dein#add('mhinz/vim-startify')  " Cool startpage for vim
    call dein#add('luochen1990/rainbow')
    call dein#add('editorconfig/editorconfig-vim')
    call dein#add('terryma/vim-multiple-cursors')
    call dein#add('chrisbra/NrrwRgn')
    " Java
    call dein#add('Dinduks/vim-java-get-set') " Generate java getters and setters
    " Groovy
    call dein#add('vim-scripts/groovy.vim')
    " Gradle
    call dein#add('tfnico/vim-gradle')
    " C++
    call dein#add('octol/vim-cpp-enhanced-highlight', { 'for': ['cpp', 'c', 'h'] })
    call dein#add('derekwyatt/vim-protodef', { 'for': ['cpp', 'c', 'h'] })  " Parsing c++ .h files
    call dein#add('derekwyatt/vim-fswitch', { 'for': ['cpp', 'c'] })  " better switching between files
    call dein#add('vim-scripts/DoxygenToolkit.vim')
    " Ctag auto generate
    call dein#add('szw/vim-tags')
    call dein#add('vim-scripts/cscope.vim')
    " Markdown
    call dein#add('vim-pandoc/vim-pandoc-syntax', { 'for': ['markdown', 'pandoc.markdown', 'md'] })
    call dein#add('vim-pandoc/vim-pantondoc', { 'for': ['markdown', 'pandoc.markdown', 'md'] })
    call dein#add('shime/vim-livedown', { 'for': ['markdown', 'pandoc.markdown', 'md'] })
    " Perl
    "call dein#add('vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' })
    " Python
    call dein#add('klen/python-mode', { 'for': ['python'] })
    call dein#add('tmhedberg/SimpylFold')
    " Ruby
    call dein#add("tpope/vim-rails")
    call dein#add("vim-ruby/vim-ruby")
    call dein#add("tpope/vim-rake")
    call dein#add("tpope/vim-bundler")
    call dein#add("tpope/vim-cucumber")
    call dein#add("tpope/vim-bundler")
    call dein#add("slim-template/vim-slim")
    call dein#add("tpope/vim-haml")

    " Web
    call dein#add('othree/html5.vim', { 'for': ['html', 'html.handlebars'] })
    call dein#add('cakebaker/scss-syntax.vim', {'for': ['less', 'scss', 'sass']})
    call dein#add('elzr/vim-json', {'for': 'json'})
    call dein#add('mustache/vim-mustache-handlebars', {'for': 'html.handlebars'})
    call dein#add('PProvost/vim-markdown-jekyll', {'for': ['html', 'hbs']})
    call dein#add("rstacruz/sparkup")
    " Colors Themes
    call dein#add('chriskempson/base16-vim')
    call dein#add('Soares/base16.nvim')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

" }}}

" --------[ Plugin Settings ]----------------------------------------------- {{{
if has('nvim')
    runtime! python_setup.vim
endif

" auto install new plugins
if dein#check_install()
    call dein#install()
endi

set rtp+=/home/ryanm/.nvim/bundles/repos/github.com/dbgx/lldb.nvim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath


" --------[ General Plugin Settings ]---------- {{{

" Gitgutter setup
let g:gitgutter_realtime=0

" }}}

" --------[ Language specific ]---------------- {{{

" C-support
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" Doxygen
let g:DoxygenToolkit_briefTag_pre="@Synopsis"
let g:DoxygenToolkit_paramTag_pre="@Param"
let g:DoxygenToolkit_returnTag="@Returns"
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Ryan M Sullivan"
let g:DoxygenToolkit_licenseTag="My license"

" Markdown                                                                   \/ added this
autocmd BufRead,BufNewFile *.md,*.markdown setlocal filetype=pandoc.markdown \" Automatically set filetype for Markdown files"

" Python
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" for debugging pyclewn
let pyclewn_args="--terminal='tmux,split-window'" " open tmux split to interact with debugee
"let g:pyclewn_python =

" }}}

" --------[ Ctags ]---------------------------- {{{
let g:vim_tags_auto_generate = 0
let g:vim_tags_use_language_field = 1
let g:vim_tags_main_file = 'tags'

" lh-tags


" Tagbar
nmap <F8> :TagbarToggle<CR>
au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &

" --------[ Cscope ]--------------------------- {{{
" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

"  }}}

" }}}

" --------[ Deoplete ]---------------------- {{{

set rtp+=/home/ryanm/repos/github.com/Shougo/deoplete.nvim/
let g:deoplete#enable_at_startup = 1

" c++
let g:deoplete#sources#clang#libclang_path="/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/lib/clang"


" }}}

" --------[ Neomake ]-------------------------- {{{

" When writing a buffer.
call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 1s).
"call neomake#configure#automake('nw', 1000)
" When reading a buffer (after 750ms), and when writing.
"call neomake#configure#automake('rw', 750)

" }}}

" --------[ Undotree setup ]----------------------- {{{

" let g:undotree_WindowLayout='botright'
let g:undotree_SetFocusWhenToggle=1
nnoremap <silent> <F5> :UndotreeToggle<CR>

" }}}

" --------[ NERDTree setup ]------------------------ {{{

let NERDTreeShowHidden=0
let NERDTreeQuitOnOpen=0
let g:NERDTreeUseSimpleIndicator=1
let NERDTreeShowLineNumbers=1
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=0
let NERDTreeIgnore=['\.hg', '.DS_Store']
"let NERDTreeBookmarksFile=expand(g:vimDir.'/.cache/NERDTree/NERDTreeBookmarks')
nnoremap <F2> :NERDTreeToggle<CR>
"nnoremap <F3> :NERDTreeFind<CR>

" }}}

" --------[ Unite setup ]----------------- {{{

"let g:unite_data_directory=g:vimDir.'/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

if executable('ack')
    let g:unite_source_grep_command='ack'
    let g:unite_source_grep_default_opts='--no-heading --no-color -a -C4'
    let g:unite_source_grep_recursive_opt=''
endif

function! s:unite_settings()
    imap <buffer> <C-j>   <Plug>(unite_select_next_line)
    imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
    nmap <buffer> Q <plug>(unite_exit)
    nmap <buffer> <esc> <plug>(unite_exit)
    imap <buffer> <esc> <plug>(unite_exit)
endfunction

autocmd FileType unite call s:unite_settings()

" Set Unite leader
nmap <space> [unite]
nnoremap [unite] <nop>

" Set useful Unite mappings
nnoremap <silent> [unite]t :<C-u>Unite -auto-resize -buffer-name=files file<cr>
nnoremap <silent> [unite]y :<C-u>Unite -auto-resize -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>

" }}}

" --------[ GoldenView setup ]--------------------- {{{

let g:goldenview__enable_default_mapping=0
nmap <F4> <Plug>ToggleGoldenViewAutoResize

" }}}

" --------[ UltiSnips setup ]---------------------- {{{
let g:UltiSnipsExpandTrigger='<c-e>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
"let g:UltiSnipsSnippetsDir=plugDir.'/vim-snippets/UltiSnips'

" }}}

" --------[ RSpec.vim mappings ]----------------------- {{{
map <Leader>rs :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch rspec {spec}"

" }}}

"--------[ Startify Configuration ]---------------------- {{{

"|g:autoloaded_startify|
"g:startify_bookmarks|
"g:startify_change_to_dir|
"g:startify_change_to_vcs_root|
"g:startify_custom_footer|
"g:startify_custom_header|
"g:startify_custom_indices|
"g:startify_disable_at_vimenter|
"g:startify_enable_special|
"g:startify_enable_unsafe|
"g:startify_files_number|
"g:startify_list_order|
"g:startify_relative_path|
"g:startify_session_autoload|
"g:startify_session_delete_buffers|
"g:startify_session_dir|
"let g:startify_session_dir = '~/.vim/session'
"g:startify_session_persistence|
"g:startify_session_savecmds|
"g:startify_session_savevars|
"g:startify_skiplist_server|
"g:startify_skiplist|

"Vim Startify setup
"let g:startify_session_dir = g:vimDir.'/.cache/sessions'
"let g:startify_change_to_vcs_root = 1
"let g:startify_show_sessions = 1
"nnoremap <F1> :Startify<cr>

" }}}

" ------- [ Rainbow setup ]-------------------------------- {{{
syntax on
let g:rainbow_active = 1

let g:rainbow_load_separately = [
            \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
            \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
            \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
            \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
            \ ]

"au FileType c,cpp,h,objc,objcpp,python,java,javascript call rainbow#load()
au VimEnter call rainbow#load()
let g:rainbow_conf = {
            \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'tex': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \       },
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \       'vim': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \   }
            \}

" }}}

" --------[ Tabularize setup ]---------------------- {{{

nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

" }}}

" --------[ Pandoc setup ]-------------------------- {{{

let g:pandoc_use_conceal = 1
let g:pandoc_syntax_dont_use_conceal_for_rules = ['block', 'codeblock_start', 'codeblock_delim']
let g:pandoc_syntax_user_cchars = {'li': '*'}
let g:pantondoc_use_pandoc_markdown = 1
"let g:pandoc#formatting#equalprg = \"pandoc -t markdown --no-wrap --atx-headers"

" }}}

" --------[ Livedown setup ]----------------------- {{{

let g:livedown_autorun = 0
let g:livedown_open = 1
let g:livedown_port = 1337
map <leader>gm :call LivedownPreview()<CR>

" }}}

" --------[ eclim ]-------------------------------- {{{

"Run Checkstyle on open/write
set rtp^=/usr/share/vim/vimfiles/
autocmd BufWinEnter *.java :Checkstyle
autocmd BufWritePost *.java :Checkstyle
let g:EclimCompletionMethod = 'omnifunc'

" }}}

" --------[ Gruvbox setup ]--------------------- {{{

let g:gruvbox_bold = 0
if !has("gui_running")
    let g:gruvbox_italic = 0
endif

" }}}

" --------[ Fugitive setup ]-------------------- {{{

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gr :Gremove<CR>
autocmd FileType gitcommit nmap <buffer> U :Git checkout -- <C-r><C-g><CR>
autocmd BufReadPost fugitive://* set bufhidden=delete

" }}}

" --------[ Vim-Multiple-Cursors ]---------- {{{

" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

" Default highlighting
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

" }}}

" --------[ Airline ]---------------------- {{{

let g:airline_theme='bubblegum'

" }}}

" --------[ Base16-Vim ]------------------- {{{

" if filereadable(expand("~/.vimrc_background"))
"     let base16colorspace=256
"     source ~/.vimrc_background
" endif


autocmd BufEnter * hi! Normal ctermbg=NONE | hi LineNr ctermbg=NONE | hi CursorLine cterm=underline ctermbg=NONE

set background=light
let g:base16_transparent_background = 1

" }}}

" }}}

" }}}

" ========{ Formatting }================================================== " {{{

if has("vms")
    set nobackup		" do not keep a backup file, use versions instead
else
    set backup		" keep a backup file
endif

set history=10000	" remember everything
set t_Co=256        "256 color vim
set number " Always turn on line numbers
highlight LineNr ctermfg=grey " line number coloring

set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set autoread        " auto read when file changes from outside

set expandtab
set smarttab
set shiftwidth=4    " configure tabs
set softtabstop=4   " configure tabs
set tabstop=4       " configure tabs

set autoindent      " set autoindent
set hidden
set ignorecase
set smartcase
set showmatch
set hlsearch
set ls=2
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set bs=2
set spelllang=en_us   " Turn on spell check: English

filetype off          " necessary to make ftdetect work on Linux
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" autoindent
autocmd FileType perl set autoindent|set smartindent|syntax on
" my perl includes pod
let perl_include_pod = 1
" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

set cursorline
set nowrap
set completeopt -=preview
set wildchar=<TAB>  " start wild expansion in the command line using <TAB>"
set wildmenu
" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

set noshowmode
set cmdheight=1

"set fileformat=unix  " unix file format
"set nrformats-=octal " octal num format

" ------[ code folding ]------
command! -nargs=+ Foldsearch exe "normal /".<q-args>."^M" | setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\|\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2
set fdm=marker " for folds

" ------[ Reload buffers ]----
" autocmd InsertEnter * :bufdo e " on insert mode"

" }}}

" ========{ Basic UI Configuration }====================================== " {{{

map Q gq " Don't use Ex mode, use Q for formatting
let leader = "," " remap leader to z (from \)
let g:leader = "," " remap leader to z (global)
let  mapleader = "," " remap leader to , (from \)
let g:mapleader = "," " remap leader to z (global)
set timeoutlen=2000
set pastetoggle=<F3>
map <leader>r :source ~/.config/nvim/init.vim<cr>
" auto reload vimrc when editing it
autocmd! bufwritepost init.vim source ~/.config/nvim/init.vim

" ---------------[ Navigate Vim Splits ]-----------------------------------------

nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move    right a split
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split

"Open new split panes to right and bottom, which feels more natural than Vim’s default:

set splitbelow
set splitright

"Max out the height of the current split
"ctrl + w _
"Max out the width of the current split
"ctrl + w |
"Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w =
"Swap top/bottom or left/right split
"Ctrl+W R
"Break out current window into a new tabview
"Ctrl+W T
"Close every window in the current tabview but the current one
"Ctrl+W o

" new tab
map <C-t><C-t> :tabnew<CR>
" close tab
map <C-t><C-w> :tabclose<CR>

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K> <C-U>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" :cd. change working directory to that of the current file
cmap cd. lcd %:p:h

" map leader p to start Pyclewn, leader o to set up the debugging enviernment
" map <leader>p :Pyclewn gdb <cr>
" map <leader>o :Cinferiortty \| :Cmapkeys \| :Cfile main <cr>

" lldb mapping
map <leader>o :LLsession new<CR>
map <leader>p :LLmode debug<CR>
map <leader>l :LLmode code<CR>
nmap <leader>f  <Plug>LLBreakSwitch
map <leader>c :LL continue<CR>
map <leader>m :LL step<CR>
map <leader>n :LL next<CR>
" color break symbol
hi LLBreakpointSign ctermfg=cyan
" vmap <F2> <Plug>LLStdInSelected
" nnoremap <F4> :LLstdin<CR>
" nnoremap <S-F8> :LL process interrupt<CR>
" nnoremap <F9> :LL print <C-R>=expand('<cword>')<CR>
" vnoremap <F9> :<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>

nnoremap <F9> :Dispatch<CR>

" fswitch
nmap <silent> <leader>y :FSHere<cr>
"nmap <buffer> <silent> <leader>PP " mapped in pluging

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on
endif

" --------[ Language specific ]--------

" C++
" ,g generates the header guard
map <leader>g :call IncludeGuard()<CR> " func in other section
map <leader>h :call IncHeader()<CR>

" Perl
"autocmd FileType perl call PerlGuard()<CR>

" Other
" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \	if &omnifunc == "" |
                \		setlocal omnifunc=syntaxcomplete#Complete |
                \	endif
endif

set cot-=preview "disable doc preview in omnicomplete

" make CSS omnicompletion work for SASS and SCSS
autocmd BufNewFile,BufRead *.scss             set ft=scss.css
autocmd BufNewFile,BufRead *.sass             set ft=sass.css

" }}}

" ========{ Vim Script Functions }======================================== " {{{

" ------[ Make the 81st column stand out ]---------------------
"  " OR ELSE just the 81st column of wide lines...
highlight ColorColumn ctermbg=167
call matchadd('ColorColumn', '\%81v', 100)

" --------[ Highlight matches when jumping to next ]-------------------

" This rewires n and N to do the highlighing...
"nnoremap <silent> n   n:call HLNext(0.4)<cr>
"nnoremap <silent> N   N:call HLNext(0.4)<cr>

" OR ELSE just highlight the match in gold...
fun! HLNext (blinktime)
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#\%('.@/.'\)'
    let ring = matchadd('WhiteOnRed', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfun

" --------[ Always turn on syntax highlighting for diffs ]------------------
" EITHER select by the file-suffix directly...
augroup PatchDiffHighlight
    autocmd!
    autocmd BufEnter  *.patch,*.rej,*.diff   syntax enable
augroup END

" OR ELSE use the filetype mechanism to select automatically...
filetype on
augroup PatchDiffHighlight
    autocmd!
    autocmd FileType diff   syntax enable
augroup END
" ------[ Open any file with a pre-existing swapfile in readonly mode ]---------

augroup NoSimultaneousEdits
    autocmd!
    autocmd SwapExists * let v:swapchoice = 'o'
    autocmd SwapExists * echomsg
    autocmd SwapExists * echo 'Duplicate edit session (readonly)'
    autocmd SwapExists * echohl None
    autocmd SwapExists * sleep 2
augroup END

" function to generate c++ header guard, map in other section
fun! IncludeGuard()
    let basename = substitute(bufname(""), '.*/', '', '')
    let guard = '_' . substitute(toupper(basename), '\.', '_', "H")
    call append(0, "#ifndef " . guard)
    call append(1, "#define " . guard)
    call append(line("$"), "#endif // for #ifndef " . guard)
endfun

fun! IncHeader()
    let date = strftime("%B %d, %Y")
    call append(0, "" . "")
    call append(0, "/*" . "")
    call append(1, " * " . "Sullivan, Ryan")
    call append(2, " *" . "")
    call append(3, " * " . "CS A250")
    call append(4, " * " . date)
    call append(5, " *" . "")
    call append(6, " * " . "Lab ")
    call append(7, " */" . "")
endfun

" UTF-8
fun! ViewUTF8()
    set encoding=utf-8
    set termencoding=big5
endfun

fun! UTF8()
    set encoding=utf-8
    set termencoding=big5
    set fileencoding=utf-8
    set fileencodings=big5,utf-8
endfun

fun! Big5()
    set encoding=big5
    set fileencoding=big5
endfun

fun! PerlGuard()
    call append(0, "" . "")
    call append(0, "#!/usr/bin/perl" . "")
endfun

" }}}

" }}}
