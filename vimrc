set nocompatible              "be iMproved, required
filetype off                  " required
set nu
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Enable folding
set foldmethod=indent
set foldlevel=99

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'The-NERD-tree'                 "目录树显示插件 
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'

Plugin 'jnurmine/Zenburn' "配色方案可以和你正在使用的基础配色共同使用。GUI模式可以尝试solarized方案, 终端模式可以尝试Zenburn方案：
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'	"如果你想要一个不错的文件树形结构，那么NERDTree是不二之选
Plugin 'jistr/vim-nerdtree-tabs' "如果你想用tab键，可以利用vim-nerdtree-tabs插件实现
Plugin 'tpope/vim-fugitive'	"想要在Vim中执行基本的Git命令？vim-fugitive插件则是不二之选
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}	"Powerline是一个状态栏插件，可以显示当前的虚拟环境、Git分支、正在编辑的文件等信息
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
au BufNewFile,BufRead *.py
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4
\ set textwidth=79
\ set expandtab
\ set autoindent
\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
\ set tabstop=2
\ set softtabstop=2
\ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on
set clipboard=unnamed	"使用自带的剪贴板。但是有时候你想从Vim之外的程序中剪切、复制、粘贴文本。在OS X平台上，你可以通过这行代码访问你的系统剪贴板
