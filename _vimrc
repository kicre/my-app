" 启动语法检测
syntax enable
syntax on
filetype plugin indent on

" 按键设置
nmap <space> :
nmap rc : e $HOME/_vimrc

" 字符编码设置
set fileencodings=utf-8,gbk,big5,ucs-bom,latin1
set fileencoding=utf-8
let &termencoding=&encoding
set encoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 页面设置
set backspace=indent,eol,start        " 开启退格，跨行退格
set foldmethod=indent
set foldlevel=99                      " 代码折叠
set laststatus=2                      " 保留命令行
set scrolloff=5                       " 在上下移动光标时，光标上方或者下方至少会保留显示的行数
set guifont=NotoMono_NF:h12

" 其他设置
set showcmd                           " 显示输入的命令
set showmatch                         " 设置匹配模式，显示匹配的括号
set mouse=a                           " 使鼠标可用
set magic                             " 设置魔术
set number                            " 显示行号
set relativenumber                    " 显示相对行号
set nocompatible                      " 去掉讨厌的有关vi一致性模式，避免以前的版本的一些漏洞和局限
set backspace=indent,eol,start        " 使退格键可以正常使用
"set noswapfile                        " 禁止生成临时文件
set autoread                          " 当文件被改动时自动载入
set completeopt=longest,menu          " 让Vim的补全才当行为与一般IDE一致
set wildmenu
set wildmode=list:full                " 在命令行中，按下Tab键，显示当前所有可能的命令
set softtabstop=4                     " 使用退格键，删除空格时，可以一次删除四个空格
set fileformat=unix
set updatetime=300

" 设置Tab相关设置
set tabstop=4                         " 设置制表符tab键的宽度为4空格
set expandtab                         " 用空格替代制表符
set list                              " 将空格,制表等空白字符都用特殊可见字符显示出来"
set listchars=tab:>-,trail:-          " 定义显示空白字符的特殊可见字符
set shiftwidth=4                      " 自动缩进使用4个空格"


" 设置当前缓冲区的搜索选项
set ignorecase                        " 忽略大小写
set smartcase                         " 开启智能大小写敏感
set hlsearch                          " 高亮搜索得到的结果
set incsearch                         " 开启递增搜索模式,随着键入待搜索文本，不断的进行搜索
set conceallevel=0
set laststatus=2
set nocompatible
set hidden


" 高亮光标所在行和列
"set cursorline                        " 高亮光标所在行
"set cursorcolumn                      " 高亮光标所在列
set nobackup
set nowritebackup
set t_TI= t_TE=
set fillchars=vert:\ 

"packadd termdebug


" 插件安装管理器要安装的插件列表 Base URL: https://github.com
call plug#begin('~/.config/vimPlugin')
call plug#end()

