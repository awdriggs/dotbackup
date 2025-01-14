"                    _      _
"                   | |    (_)
"   __ ___      ____| |_ __ _  __ _  __ _ ___
"  / _` \ \ /\ / / _` | '__| |/ _` |/ _` / __|
" | (_| |\ V  V / (_| | |  | | (_| | (_| \__ \
"  \__,_| \_/\_/ \__,_|_|  |_|\__, |\__, |___/
"                              __/ | __/ |
"                             |___/ |___/
"
" --------------------------------------------------------------------------
" Setup Vundle
" --------------------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'        " let Vundle manage Vundle, required

" ---------------------------------------------------------------------------
" Plugins
" ---------------------------------------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'               " status bar/tabline
Plugin 'digitaltoad/vim-jade'            " Jade template engine syntax highlighting and indention
Plugin 'kchmck/vim-coffee-script'        " CoffeeScript support
Plugin 'kien/ctrlp.vim'                  " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'moll/vim-node'                   " Tools for Node
Plugin 'scrooloose/nerdtree'             " A tree explorer plugin for navigating the filesystem
Plugin 'thoughtbot/vim-rspec'            " Lightweight RSpec runner for Vim
Plugin 'tpope/vim-bundler'               " Lightweight support for Ruby's Bundler
Plugin 'tpope/vim-commentary'            " Use gcc to comment out a line
Plugin 'tpope/vim-endwise'               " wisely add 'end' in ruby etc
Plugin 'tpope/vim-haml'                  " runtime files for Haml, Sass, and SCSS
Plugin 'tpope/vim-projectionist'         " project configuration
Plugin 'tpope/vim-rails'                 " Ruby on Rails power tools
Plugin 'tpope/vim-rake'                  " it's like rails.vim without the rails
Plugin 'tpope/vim-repeat'                " enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-sensible'              " Defaults everyone can agree on
Plugin 'tpope/vim-surround'              " quoting/parenthesizing made simple
Plugin 'tpope/vim-unimpaired'            " pairs of handy bracket mappings
Plugin 'vim-ruby/vim-ruby'               " Ruby Configuration Files
Plugin 'Chiel92/vim-autoformat'          " autoformatting
Plugin 'mustache/vim-mustache-handlebars' " syntax highlighting for handlebars
" Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'sophacles/vim-processing'        " processing syntax highlighting and tools
Bundle 'gabrielelana/vim-markdown'
Plugin 'posva/vim-vue'
Plugin 'mattn/emmet-vim'
Plugin 'sirtaj/vim-openscad'             " open scad text highlighting
" Themes
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'ChrisKempson/Vim-Tomorrow-Theme'
" Plugin 'croaky/vim-colors-github'
" Plugin 'sjl/badwolf'
Plugin 'jacoborus/tender.vim'
" Plugin 'dracula/vim', { 'name': 'dracula' }

" All of your Plugins must be added before the following line
call vundle#end()                 " required

" ----------------------------------------------------------------------------
"  UI
"  ----------------------------------------------------------------------------
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set ruler                         " Show cursor position.
set number                        " Show line numbers.
set noshowmode                    " airline.vim takes care of this
set backspace=indent,eol,start    " Intuitive backspacing.
set wildmenu                      " Hitting TAB will show possible completions
set wildchar=<Tab>                " Expand the command line using tab
set autoread                      " Reread file when changed from outside of Vim
set foldcolumn=0                  " Add a bit of extra margin to the left
set cursorline                    " Highlight current line
set title                         " Show filename in window title bar
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" colorscheme tomorrow-night-bright
" set background=light
" colorscheme dracula

colorscheme tender
" ----------------------------------------------------------------------------
" Text Formatting
" ----------------------------------------------------------------------------
set autoindent                  " automatic indent new lines
"set smartindent                 " be smart about it
set nowrap                      " do not wrap lines
set tabstop=2                   " Global tab width.
set shiftwidth=2                " And again, related.
set expandtab                   " Use spaces instead of tabs
" set textwidth=80                " wrap at 80 chars by default
" turn off the annoying auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" ---------------------------------------------------------------------------
" NERDTree
" ---------------------------------------------------------------------------
noremap <leader>n :NERDTreeToggle<cr>
" open nerdtree with leader + n

let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
imap xx <Esc>

" ---------------------------------------------------------------------------
"
"  Strip all trailing whitespace in file
"
" ---------------------------------------------------------------------------
"  http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim/1618401#1618401
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

" ---------------------------------------------------------------------------
" Key mappings
" ---------------------------------------------------------------------------
" enter will insert a blank line, no insert mode!
nmap <CR> o <Esc>
nmap <S-Enter> O <Esc>

" af will run the autformat command
noremap af :Autoformat <CR>

" for Processing command line tool, will run the sketch
noremap rr :make <CR>

noremap <leader>p "+p
" Commentary: type \\ to toggle comments
noremap <leader>\ :Commentary<cr>

" Window navigation - use TAB then any other window command ...
" example: TAB h navigate to left window, TAB j navigate to lower window
noremap <tab> <C-w>

" TAB-TAB to cycle through windows
noremap <tab><tab> <C-w><C-w>

" setup copy paste between terminals?
set clipboard^=unnamed
