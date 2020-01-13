" 
"        Filename: .vimrc
"
"          Author: Lex
"     Description: vim config file
"          Create: 2019-08-22 11:20
"   Last Modified: 2020-01-12 18:40
" 

" 字符集
set encoding=utf-8

" 行号
set number

" 相对行号
set relativenumber

" 所在行高亮
set cursorline

" 行宽
set textwidth=140

" 自动折行
set wrap
set wrapmargin=2

" 高亮搜索结果
set hls

" 即时搜索
set incsearch

" 搜索忽略大小写
set ignorecase

" 不是那么必要的补全
set nocompatible

" 模式指示
set showmode

" 命令指示
set showcmd

" 命令补全
set wildmenu
set wildmode=longest:list,full

" 光标位置
set ruler

" 256色支持
set t_Co=256

" 鼠标支持
set mouse=a

" 缩进
set tabstop=4
set expandtab

" 行自动缩进
set autoindent

" 滚动行限制
set scrolloff=4

" 语法高亮
syntax enable
syntax on

" 主题背景
" set background=dark
" colorscheme solarized

" 自动切换目录
set autochdir

" 文件监视
set autoread

" 不创建备份文件
set nobackup

" 不创建交换文件
set noswapfile

" 不发出铃声
set noerrorbells

" 状态栏
" 使用 Airline 状态栏
" 支持 powerline 字体
" 并显示 tab 和 buffer
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" tag 跳转支持
" set tags=/home/horizon/.vim/tags

" taglist 支持
let Tlist_Show_One_File=1
let Tlist_exit_OnlyWindow=1
let Tlist_Ctags_cmd="/usr/bin/ctags"

" 键绑定
" 上下左右
noremap k l
noremap u k
map l <nop>

" 键绑定
" 插入 命令
map <F6> i

" 宏绑定
" 保存 退出 刷新
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" 宏绑定
" 插件
map <F3> :NERDTreeToggle<CR>
nmap <silent> <F2> :WMToggle<CR>

" 分割窗口
" 向左分割 向右分割
map sd :set splitright<CR>:vsplit<CR>
map sc :set nosplitright<CR>:vsplit<CR>

" Vundle 运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim

" vundle 初始化 
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'                     " Vundle 插件管理
    Plugin 'tpope/vim-fugitive'                       " Fugitive Git封装器
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'scrooloose/nerdtree'                      " NERDTree 目录树
    Plugin 'majutsushi/tagbar'                        " TagBar 标签导航
    Plugin 'vim-syntastic/syntastic'                  " Syntastic 语法纠错
    Plugin 'vim-scripts/AutoComplPop'                 " 自动补全
    Plugin 'vim-scripts/OmniCppComplete'              " C++ 自动补全
    Plugin 'vim-airline/vim-airline'                  " Airline 状态栏
    Plugin 'vim-airline/vim-airline-themes'           " Airline 的附属主题
    Plugin 'altercation/vim-colors-solarized'         " solarized 主题
    Plugin 'ryanoasis/vim-devicons'                   " vim 图标集
    Plugin 'vim-scripts/winmanager'                   " WinManager 窗口管理器
call vundle#end()
filetype plugin indent on

" NERDTree 配置
let NERDTreeHighlightCursorline = 1       " 高亮当前行
let NERDTreeShowLineNumbers     = 1       " 显示行号

" 忽略文件类型
let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '^\.git$', '^\.repo$', '^\.svn$', '^\.hg$' ]

" 当没有文件打开时关闭 NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

" TagBar 配置
" 解决依赖 ctags
let g:tagbar_ctags_bin = 'ctags'

" 设置默认宽度
let g:tagbar_width=30

" 设置时光标位置
let g:tagbar_autofocus=1

" 设置默认显示位置
let g:tagbar_left=1

" WinManager 配置
let g:winManagerWindowLayout='FileExplorer|TagList'











