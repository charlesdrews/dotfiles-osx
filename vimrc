" *******************************************************************
" Configure Vundle (see https://github.com/VundleVim/Vundle.vim)
" *******************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://github.com/vim-scripts
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'JamshedVesuna/vim-markdown-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" *******************************************************************
" End configuration of Vundle
" *******************************************************************

" Use the Solarized color scheme
syntax enable
set background=dark
colorscheme solarized

" Misc. options
set number             " turn on line numbers
set ruler              " show line & column #s in statusline
set colorcolumn=72,79  " visual reminder to avoid overlong lines
set visualbell         " flash screen rather than sound beep
set pastetoggle=<F12>  " paste from other apps w/o indent problems
set backspace=indent,eol,start	"allow backspace over anything in insert mode
set scrolloff=1

" Search options
set hlsearch           " highlight search results
set incsearch          " highlight next match while typing pattern
nnoremap <silent> <C-l> :nohlsearch<CR><C-l> " use Ctrl-l to mute hl

" Spell check preferences
set spell spelllang=en_us " turn on spell check & change color
highlight clear SpellBad	" word not recognized by spellchecker
highlight SpellBad cterm=underline ctermfg=DarkRed
highlight clear SpellCap	" word that should be capitalized
highlight SpellCap cterm=underline
highlight clear SpellLocal	" word from other region
highlight SpellLocal cterm=underline
highlight clear SpellRare	" word that is rarely used
highlight SpellRare cterm=underline

" Enable filetype detection, plugins, & indenting
"	-defaults are in /usr/share/vim/vim73/
"		& /usr/share/vim/vim73/indent/
"	-my overrides in ~/.vim/after/ftplugin/)
"filetype plugin indent on " (in the Vundle config above)
" for non-recognized filetypes, use:
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Set digraphs for easy use of certain non-ascii characters
"	convert the unicode hex values to decimal
digraph pp 182   " paragraph sign: U+00B6 = 182
digraph u> 8593  " up arrow: U+2191 = 8593
digraph -> 8594  " right arrow: U+2192 = 8594
digraph d> 8595  " down arrow: U+2193 = 8595
digraph [[ 10214 " left double bracket: U+27E6 = 10214
digraph ]] 10215 " right double bracket U+U27E7 = 10215
digraph << 10216 " left angle bracket U+27E8 = 10216
digraph >> 10217 " right angle bracket U+27E9 = 10217
digraph ln 172   " logical negation sign U+00AC = 172
digraph la 8743  " logical and/conjunction U+2227 = 8743
digraph lo 8744  " logical or/disjunction U+2228 = 8744

" Specify the C-family compilation flags for YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" Control preview window behavior with YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion=1
" make sure ycm is using system vim, not Anaconda vim
let g:ycm_path_to_python_interpreter='/usr/bin/python'
let g:ycm_server_use_vim_stdout=1
let g:ycm_server_log_level='debug'
" clear ycm's default blacklist so it runs on all filetypes
let g:ycm_filetype_blacklist={}

" Configure vim-markdown-preview to use grip
" https://github.com/JamshedVesuna/vim-markdown-preview#options
let vim_markdown_preview_toggle=2
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_temp_file=1
let vim_markdown_preview_github=1
