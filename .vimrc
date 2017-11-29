set nocompatible              " be iMproved, required
filetype off                  " required

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" JSON的编辑插件
Plugin 'JSON.vim'

" html补全插件
Plugin 'mattn/emmet-vim'

" CSS语法高亮
Plugin 'hail2u/vim-css3-syntax'

" 括号引号自动补全和智能匹配
Plugin 'Raimondi/delimitMate'

" 代码自动补全
Plugin 'Valloric/YouCompleteMe'

" js自动补全
Plugin 'marijnh/tern_for_vim'

" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可

" h: vundle         - 获取帮助

" vundle的配置到此结束，下面是你自己的配置

"设置行号
set nu
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
"将制表符扩展为空格
set expandtab
"设置编辑时制表符占用空格数
set tabstop=4
"设置格式化时制表符占用空格数
set shiftwidth=4
"让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"开启自动缩进
set ai
"开启智能对齐
set smartindent
"禁止光标闪烁
set gcr=a:block-blinkon0
"禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
"总是显示状态栏
set laststatus=2
"高亮显示当前行/列
"set cursorline
"set cursorcolumn
" 设置 vim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 基于缩进或语法进行代码折叠"
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
colorscheme desert

" 解决vim-css3-syntax不支持某些属性高亮的问题
augroup VimCSS3Syntax
    autocmd!

    autocmd FileType css setlocal iskeyword+=-
augroup END
