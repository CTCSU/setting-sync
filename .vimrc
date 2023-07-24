" MostUsed {{{
set nu

set confirm

nmap <C-a> ggVG
nmap j gj
nmap k gk
vmap <C-c> "+yi
vmap <C-x> "+c
imap <C-v> <C-R>+
nmap <C-v> a<C-v><ESC>
nmap <Leader>y ggVG"+y
inoremap kj <Esc>
" }}}

" Startup {{{
filetype indent plugin on
syntax on


" vim �ļ��۵���ʽΪ marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}


" General{{{
" ѡ�񲻼����ϵ�vi ������չvim �Ĺ���
set nocompatible
" ��ֹ����backup �ļ�
set nobackup
" ��ֹ����un~ �ļ�
set noswapfile
" history Ĭ��Ϊ52
set history=1026
" �Զ��л�����Ŀ¼������Ҫ����һ�� Vim �Ự֮�д򿪶���ļ��������Ĭ�ϵĹ���Ŀ¼�Ǵ򿪵ĵ�һ���ļ���Ŀ¼�������ÿ��Խ�����Ŀ¼�Զ��л��������ڱ༭���ļ���Ŀ¼��
set autochdir
" ������
set whichwrap=b,s,<,>,[,]
" �����Ʊ�־
set nobomb
set backspace=indent,eol,start 
" Vim ��Ĭ�ϼĴ�����ϵͳ�����干��
set clipboard+=unnamed
" ���� alt ����ӳ�䵽�˵���
set winaltkeys=no
" }}}

" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set termencoding=utf-8
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
language messages zh_CN.UTF-8
" }}}

" GUI {{{

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set cursorline
set hlsearch
set number
" ���ڴ�С
set lines=37 columns=140
" �ָ�����Ĵ���λ�ڵ�ǰ�����±�/�ұ�
set splitbelow
set splitright
"����ʾ����/�˵���
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" ʹ������ tab ��ʽ������ gui
set guioptions-=e
set nolist
" set listchars=tab:?\ ,eol:?,trail:��,extends:>,precedes:<
" set guifont=DroidSansMono_NF
" }}}

" Keymap {{{
let mapleader=","

nmap <leader>s :source $HOME/_vimrc<cr>
nmap <leader>e :e $HOME/_vimrc<cr>

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>th :tabp<cr>
map <leader>tl :tabn<cr>

" �ƶ��ָ��
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" ����ģʽ�� alt+j,k,h,l �����ָ�ڴ�С
nnoremap <M-j> :resize +7<cr>
nnoremap <M-k> :resize -3<cr>
nnoremap <M-h> :vertical resize -3<cr>
nnoremap <M-l> :vertical resize +7<cr>

" ����ģʽ�ƶ���� alt + �����
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>

" IDE like delete
inoremap <C-BS> <Esc>bdei

nnoremap vv ^vg_
" ת����ǰ��Ϊ��д
inoremap <C-u> <esc>mzgUiw`za
" ����ģʽ�µ�����β
cnoremap <C-a> <home>
cnoremap <C-e> <end>

nnoremap <F4> :setlocal number!<cr>

vnoremap <BS> d
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
map <S-Insert>		"+gP
cmap <C-V>		<C-R>+
cmap <S-Insert>		<C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" �򿪵�ǰĿ¼ windows
map <leader>ex :!start explorer %:p:h<CR>

" �򿪵�ǰĿ¼CMD
map <leader>cmd :!start<cr>
" ��ӡ��ǰʱ��
map <F5> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

" ���Ƶ�ǰ�ļ�/·����������
nmap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nmap ,fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

" �����л�Buffer��ݼ�"
nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>

" }}}

" Plugins {{{
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/onehalf/vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jistr/vim-nerdtree-tabs'      " enhance nerdtree's tabs
Plugin 'Xuyuanp/nerdtree-git-plugin'  " display git status within Nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " enhance devicons
Plugin 'davidklsn/vim-sialoquent' "colorScheme
Plugin 'itchyny/lightline.vim'
Plugin 'sts12/vim-pink-moon'
Bundle 'sonph/onehalf', {'rtp': 'vim/'}

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L11'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L11 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L11', {'name': 'newL9'}

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
colorscheme onehalflight
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" }}}

" Nerdtree {{{
let g:NERDTreeWinSize = 27 " �趨 NERDTree �Ӵ���С
""����/�ر�nerdtree��ݼ�
map <leader>t :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=3  " ����Nerdtreeʱ�Զ���ʾBookmarks
""��vimʱ���û���ļ��Զ���NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
"��NERDTreeΪʣ�µ�Ψһ����ʱ�Զ��ر�
autocmd bufenter * if (winnr("$") == 3 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""����������ʾͼ��
let NERDTreeIgnore = ['\.pyc$']  " ��������.pyc�ļ�����ʾ
let g:NERDTreeShowLineNumbers=3  " �Ƿ���ʾ�к�
let g:NERDTreeHidden=2     "����ʾ�����ļ�
""Making it prettier
let NERDTreeMinimalUI = 3
let NERDTreeDirArrows = 3
" ����: ����ָ���ļ����ļ��в���ʾ
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']  
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'


