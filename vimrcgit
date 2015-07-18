" General


nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

nnoremap <Space> i<Space><Esc>

nnoremap . I#<Esc>
""nmap , 0f#s<Esc>
""nnoremap , :%s/#//g<Enter>:noh<Enter>
nnoremap , :silent! s/#//g<Enter>:noh<Enter>


""nnoremap <BS> dh
set backspace=2




"" not vi-compatible mode
set nocompatible

"" persistant undos
set undodir=~/.local/share/vim/undo
set undofile
set undolevels=1000
set undoreload=10000

"" viminfo location
set viminfo+=n~/.local/share/vim/viminfo


" Plugins

"" vundle
"""filetype must be turned off before vundle commands
filetype off
""" where vundle will be stored, call a command
set rtp+=/etc/vim/bundle/Vundle.vim/
call vundle#begin("~/.local/share/vim/bundle/Vundle.vim")
""" vundle modules to load
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-markdown'
"Plugin 'tpope/vim-fugitive'
"Plugin 'ervandew/supertab'
"Plugin 'godlygeek/tabular'
call vundle#end()
""" helpful vundle hints (to be run inside vim)
":PluginList - list plugins
":PluginInstall - install plugins
":PluginInstall! - update plugins
":PluginSearch foo - search for plugin foo
":PluginClean - remove unused plugins

"" turn filetype recognition back on
filetype plugin indent on


" Editing environment

"" tab behavior (all smart/auto, tab = 4 spaces)
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=0
set tabstop=4
set expandtab
":retab applys these rules to the current buffer

"" show trailing spaces as '_', tabs as '>   '
set list listchars=tab:\ \ ,trail:_,extends:»,precedes:«
map <leader>lc :set list!<cr>

"" syntax highlighting
syntax on

"" markdown fenced syntax highlighting
let g:markdown_fenced_languages = ['c', 'sh', 'bash=sh', 'python', 'ruby',
    \ 'javascript', 'tex']

"" numbers in margin
set number

"" keep 12 lines above and below the current line when scrolling
set scrolloff=12

"" dark solarized colorscheme (Vundle installs it)
set background=dark
colorscheme solarized

"" highlight over 80 characters, break on space over 80 chars
highlight overlength ctermbg=234
match overlength /\%81v.\+/
set textwidth=80

"" highlight the current line lightly
highlight cursorline cterm=bold ctermbg=235
noremap <leader>cl :set cursorline!<cr>
set cursorline

"" highlight cursor column lightly (starts turned off)
highlight cursorcolumn cterm=bold ctermbg=235
noremap <leader>cc :set cursorcolumn!<cr>

"" highlight folds lightly, fold on syntax, only nest 2 folds deep
highlight folded ctermbg=233
set foldmethod=syntax
set foldnestmax=2


" Command behavior

"" display completions as a list (instead of tabbing through them)
set wildmode=list:longest
set wildmenu

"" incrementally search, and highlight searched terms
set incsearch
set hlsearch

"Set to autoread outside changes to files
set autoread


" Keybindings

"" move between windows with less keystrokes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"" '>' and '<' in normal mode to change tabs
nnoremap > gt
nnoremap < gT

"" toggle paste on and off
map <leader>pp :setlocal paste!<cr>

"" toggle spellcheck on and off
map <leader>ss :setlocal spell!<cr>

"" run ctags
let @t=':wa:!ctags -R --exclude=.git'

"" print file
let @p=':wa:!ssh_print m_mh247 % -o page-left=56 -o page-right=56
            \ -o page-bottom=56 -o page-top=56 -o cpi=12 -o lpi=8'


" Filetype specific commands

"" makefiles need tabs, not spaces, disable expanding the tabs
autocmd filetype make setlocal noexpandtab

"" latex files, @w compiles, @o opens in pdf reader, @p prints the pdf
""" locally compile (if you have pdflatex installed)
"autocmd BufRead,BufNewFile *.tex let @w=':w:!pdflatex %:r; bibtex %:r; pdflatex %:r; pdflatex %:r'
""" call serv_tex, a script which uploads and remotely compiles latex
autocmd BufRead,BufNewFile *.md,*.tex
    \ let @w=':wa:!gn plugin md_tex:!ssh_tex arch-user %:r'
    \ | let @p=':wa:!ssh_print mh247-12 %:r.pdf'
    \ | let @o=':!pdf %:r.pdf'

"" c/c++ files, @w calls make all, @o calls make run
autocmd BufRead,BufNewFile *.c,*.cpp,*.h,*.hpp let @w=':wa:!make all 2>&1 | less'

"" hdl files, @w syncs to server and runs the command
autocmd BufRead,BufNewFile */comp_elems/* let @w=':wa:!nand % | less'
"autocmd BufRead,BufNewFile *.hdl let @w=':wa:!nand hw %:r cat %:r.out | less'
"autocmd BufRead,BufNewFile *.asm let @w=':wa:!nand asm %:r | less'
    "\ | let @o=':wa:!nand cpu %:r cat %:r.out | less'


" Others to look at

"https://github.com/zirrostig/
"
"


