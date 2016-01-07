" Map leader
let mapleader = ","

" Encoding
set encoding=utf8

" Manage backuop files
"set noswapfile
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Invisible char settings
set tabstop=4      " size of a hard tab stop
set shiftwidth=4   " size of an indent
set softtabstop=4  " combine tabs and spaces to fit the tabstop setting
set smarttab       " make tab insert indents instead of tabs at the beginning of a line
set expandtab      " uses spaces instead of tab char
set backspace=indent,eol,start    " Active le comportement de la touche retour en arrière
"set listchars=tab:>-,space:•,trail:~,extends:>,precedes:<,nbsp:%
set listchars=tab:>-,trail:~,extends:>,precedes:<,nbsp:%
set list

" User interface
set guifont=Liberation_Mono_for_Powerline:h13
set antialias
set nocompatible   " disable Vi compatibility
set title          " set title in the current window
set number         " display line numbers
set relativenumber " relative line numbering
set ruler          " status line displays file full path
set nowrap         " don't wrap long lines
set scrolloff=3    " at least 3 lines visible aroud the cursor
set scrolljump=5   " Niumber of lines to scroll when the cursor leaves the screee
set visualbell   " Empeche Vim de beeper
set noerrorbells " Idem
set hidden       " Current buffer can be put into background
set showcmd      " Show incomplete commands
set noshowmode " Don't show current mode (already visible in airline)
set updatetime=1000 " VIM refresh time"
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable auto comment
autocmd FileType php set omnifunc=phpcomplete#CompletePHP " Enable PHP completion

" Search
set ignorecase  " ignore case when searching
set smartcase   " Reactive la casse si dans la recherche il y a une majuscule
set incsearch   " Surligne les résultats de la recherche pendans la frappe
set hlsearch    " Surligne les résultats de recherche
set cursorline  " Highlight current line

" Syntax highlighting
syntax enable
filetype on
filetype plugin on
filetype indent on

" Tags
"set tagcase="match" " Case config when searching for tags, followic means : same as ignorecase parameter
set tags=./ctags,./tags;$HOME

" Load 1st ctags file found in current folder and its parents
"let FILETAG=expand("./tags")
"if filereadable(FILETAG)
    "set tags=tags
"endif

" Improve autocomplete behaviour
set completeopt=longest,menuone


"""""""""""""""""""
" Plugins config
"""""""""""""""""""

" Init Pathogen
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'ultisnips')
call add(g:pathogen_disabled, 'snipmate')
execute pathogen#infect()

" Trim trailing white spaces
"autocmd FileType php,js,css autocmd BufWritePre <buffer> :%s/\s\+$//e


" Solarized
"if has("gui_running")
    set background=dark
    let g:solarized_termcolors=256
    colorscheme solarized
"endif

" NERDTree
" autocmd vimenter * NERDTree " Auto display NerdTree
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" Vim Airline
set laststatus=2 " Activate status line on all windows
let g:airline#extensions#tabline#enabled = 1 " shows buffers list on top of VIM
let g:airline_powerline_fonts = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_php_checkers = ['php', 'phpmd']

" Easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
map <leader>= gaip=

"""""""""""""""""""""""""""
" Key bindings
"""""""""""""""""""""""""""

" Remap ESC key
imap ;; <Esc>
map ;; <Esc>

" Exit
nnoremap <leader>q :q<cr>

" Easy Motion plugin
map <Leader> <Plug>(easymotion-prefix)

" Save file (the 1st one was used before that's why I used 'noremap')
nnoremap <leader>, :w<cr>
inoremap <leader>, <Esc>:w<cr>

" Remove trailing spaces
nmap <leader><space> :%s/\s\+$<cr>

" Go to definition
nmap <leader>g :call phpcomplete#JumpToDefinition('normal')<cr>
nmap <leader>G :call phpcomplete#JumpToDefinition('vsplit')<cr>

" NERDTree
nmap <leader>t :NERDTreeToggle<cr>

" Remove research highlighting
nmap <leader>h :noh<cr>

" Autocomplete
inoremap <leader>c <c-x><c-o>

" PDV DocBlock generation
"let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
"nnoremap <leader>d :call pdv#DocumentCurrentLine()<CR>

" Move between splits
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" Buffer navigation
nmap <leader>p :bp<cr>
nmap <leader>n :bn<cr>
nmap <leader>bd :bd<cr>

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

