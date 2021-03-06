set nocompatible    " Make Vim behave in a more useful way

" Vundle "
"========"
filetype off        " Does not always reflect current file type.
set rtp+=~/.vim/bundle/Vundle.vim " List of directories which will be searched for runtime files
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-bufferline'
Plugin 'chriskempson/base16-vim'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'severin-lemaignan/vim-minimap'
if v:version >= 704
  Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'cespare/vim-toml'
Plugin 'derekwyatt/vim-scala'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'fatih/vim-go'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'klen/python-mode'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

" General Config "
"================"
set number          " Print the line number in front of each line
set backspace=indent,eol,start  " Influences the working of backspace in Insert mode
set visualbell      " Use visual bell instead of beeping
set autoread        " When a file has been detected to hav been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set hidden          " Buffer becomes hidden when it is abandoned
syntax on           " Syntax with this name is loaded

" Searching "
"==========="
set ignorecase      " Ignore case in search patterns.
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters.

" Indentation "
"============="
set autoindent      " Copy indent from current line when starting a new line
set smartindent     " Do smart autoindenting when starting a new line
set smarttab        " A <tab> in front of a line inserts blank

filetype plugin on  " Load the plugin file for a specific file type
filetype indent on  " Load the indent file for a specific file type

set list            " List mode: useful to see difference between tabs and spaces and for trailing blanks.
set listchars=tab:\ \ ,trail:·   " String to use in 'list' mode

set nowrap          " Only part of long lines will be displayed

" Searching "
"==========="
set incsearch       " While typing a search command, show where the pattern, as it was typed so far, matches.
set hlsearch        " When there is a previous search pattern, highlight all its matches.

" Highlights "
"============"
set cursorline      " Highlight the screen line of the cursor
set colorcolumn=79,80  " Screen columns that are highlighted. Useful to align text.

" Scrolling "
"==========="
set scrolloff=5     " Minimal number of screen lines to keep above and below the cursor
set sidescrolloff=10    " Minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set sidescroll=1    " Minimal number of columns to scroll horizontally

" File cleanup "
"=============="
" Clean trailing whitespaces when starting to write the buffer to a file
autocmd BufWritePre * :%s/\s\+$//e


"========="
" Plugins "
"========="

" tagbar "
"========"
let g:tagbar_type_make = {
  \ 'kinds': [
    \ 'm:macros',
    \ 't:targets'
  \ ]
\ }
let g:tagbar_type_ruby = {
  \ 'kinds' : [
    \ 'm:modules',
    \ 'c:classes',
    \ 'd:describes',
    \ 'C:contexts',
    \ 'f:methods',
    \ 'F:singleton methods'
  \ ]
\ }
let g:tagbar_type_rust = {
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
    \ 'T:types,type definitions',
    \ 'f:functions,function definitions',
    \ 'g:enum,enumeration names',
    \ 's:structure names',
    \ 'm:modules,module names',
    \ 'c:consts,static constants',
    \ 't:traits,traits',
    \ 'i:impls,trait implementations',
  \ ]
\ }

" rust.vim "
"=========="
let g:rustfmt_autosave = 1

" vim-airline "
"============="
set laststatus=2    " Statusline appears all the time
" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" vim-go "
"========"
let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" vim-indent-guides "
"==================="
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar']

" YouCompleteMe "
"==============="
let g:ycm_rust_src_path = '/home/johansja/Codes/Rust/rustc-1.7.0/src'
nnoremap <Leader>] :YcmCompleter GoTo<CR>
