syntax on
set nocompatible              " be iMproved, required
filetype off                  " required
set shell=/bin/zsh
set number


" gernal display settings
colorscheme distinguished
set t_Co=256
set background=dark

" general layout settings
set guioptions-=r 
set nowrap

" general interface settings
set mouse=a
let mapleader = "\\"

" Vundle Setup
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set runtimepath^=~/.vim/bundle/ctrlp.vim
set updatetime=250

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"shows a git diff in the gutter
Plugin 'airblade/vim-gitgutter'

"Git wrapper so awesome, it should be illegal 
Plugin 'tpope/vim-fugitive'

" command-T plug-in provides an extremely fast, intuitive mechanism for opening files and buffers
Plugin 'git://git.wincent.com/command-t.git'
"set wildignore+=node_modules

" Sparkup lets you write HTML code faster
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Enhanced JavaScript Syntax
Plugin 'jelera/vim-javascript-syntax'

" provides syntax highlighting and improved indentation
Plugin 'pangloss/vim-javascript'

" formated javascript files by js-beautify
Plugin 'maksimr/vim-jsbeautify'

" syntax: A collection of language packs for Vim.
Plugin 'sheerun/vim-polyglot'

" Indent Guides is a plugin for visually displaying indent levels
Plugin 'nathanaelkane/vim-indent-guides'
  hi IndentGuidesOdd  ctermbg=black
  hi IndentGuidesEven ctermbg=darkgrey

" A vim plugin to display the indention levels with thin vertical lines
Plugin 'Yggdroot/indentLine'

" press - in any buffer to hop up to the directory listing
Plugin 'tpope/vim-vinegar'

Plugin 'Valloric/YouCompleteMe'

"  intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'

" provides insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

"Fast and Easy Find and Replace Across Multiple Files
Plugin 'dkprice/vim-easygrep'

" Supress grepping in places we rarely want to look
  "TODO create rgrep-exludes set grepprg=ggrep\ -Irn\ --exclude-from=$HOME/.rgrep-excludes\ --exclude-dir=.svn\ --exclude-dir=.idea\ --exclude-dir=.git\ --exclude-dir=node_modules
  set grepprg=ggrep\ -Irn\ --exclude-dir=.svn\ --exclude-dir=.idea\ --exclude-dir=.git\ --exclude-dir=node_modules\ --exclude-dir=bower_components\ --exclude-dir=.tmp\ --exclude-dir=jspm_packages
  set wildignore+=node_modules,.svn/**,.idea/**,.git/**,.logfile,.#*,*.bak,*.tmp,*.log,bower_components,.tmp,build,jspm_packages

" a tree explorer plugin for vim 
Plugin 'scrooloose/nerdtree'
nnoremap <F4> :NERDTreeToggle<CR>  

" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme='molokai'
  " Enable the list of buffers
  set laststatus=2
  " Show just the filename
  let g:airline#extensions#tabline#fnamemod = ':t'

" asynchronous Lint Engine
Plugin 'w0rp/ale'
  let g:ale_linters = {'javascript': ['eslint'], 'html': ['htmlhint']} 
  let g:ale_sign_column_always = 1
  nmap <silent> <C-k> <Plug>(ale_previous_wrap)
  nmap <silent> <C-j> <Plug>(ale_next_wrap)

" vim plugin to list, select and switch between buffers. 
Plugin 'jeetsukumaran/vim-buffergator'

  " Use the right side of the screen
  let g:buffergator_viewport_split_policy = 'R'

  " I want my own keymappings...
  let g:buffergator_suppress_keymaps = 1

  " Looper buffers
  "let g:buffergator_mru_cycle_loop = 1

  " Go to the previous buffer open
  nmap <leader>jj :BuffergatorMruCyclePrev<cr>

  " Go to the next buffer open
  nmap <leader>kk :BuffergatorMruCycleNext<cr>

  " View the entire list of buffers open
  nmap <leader>bl :BuffergatorOpen<cr>

  " Shared bindings from Solution #1 from earlier
  nmap <leader>T :enew<cr>
  nmap <leader>bq :bp <BAR> bd #<cr>




filetype plugin indent on    " required

set background=dark
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'kien/ctrlp.vim'
  " Setup some default ignores
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|node_modules|dist|coverage|app/bower_components|stubapi)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}

  " Use the nearest .git directory as the cwd
  " This makes a lot of sense if you are working on a project that is in version
  " control. It also supports works with .svn, .hg, .bzr.
  let g:ctrlp_working_path_mode = 'r'

  " Use a leader instead of the actual named binding
  nmap <leader>p :CtrlP<cr>

  " Easy bindings for its various modes
  nmap <leader>bb :CtrlPBuffer<cr>
  nmap <leader>bm :CtrlPMixed<cr>
  nmap <leader>bs :CtrlPMRU<cr>

" All of your Plugins must be added before the following line
call vundle#end()            " required


augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END
