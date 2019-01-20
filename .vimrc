set term=screen
"set term=xterm
set nocompatible              " be iMproved, required
filetype off                  " required
set nowrap
set ignorecase
set ts=4
set sw=4
set expandtab
set t_Co=256
set number
syntax enable
syntax on
"高亮搜索内容
set hlsearch
"实时搜索
set incsearch
" 高亮显示匹配的括号

"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard+=unnamed 
set smartindent
set autoindent
 " Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
 " Limit popup menu height
set pumheight=15
"预览窗口
let previewheight=8
"au! CursorHold *.[ch] nested exe "silent! ptag " . expand("<cword>")


au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
au FileType scale setlocal dict+=~/.vim/dict/scale.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict


" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
"set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
"set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
"set cursorline              " 突出显示当前行
set magic                   " 设置魔术

set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
"set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set mouse
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
" cscope静默
set nocsverb


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
"自动识别文件编码
Bundle 'FencView.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'cscope.vim'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'jsbeautify'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'
Bundle 'gnattishness/cscope_maps'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
"Bundle 'taglist.vim' 

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

set fileencodings=utf-8,gb2312,ucs-bom,euc-cn,euc-tw,gb18030,gbk,cp936
let g:fencview_autodetect=1
let g:fencview_auto_patterns='*'

let NERDTreeIgnore=['\.o$', '\.ko$', '\.symvers$', '\.order$', '\.mod.c$', '\.swp$', '\.bak$', '\~$']
let NERDTreeSortOrder=['\/$', 'Makefile', 'makefile', '\.c$', '\.cc$', '\.cpp$', '\.h$', '*', '\~$']
let NERDTreeWinPos = 'left'
let NERDTreeWinSize = 31

let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.


set background=dark
"set background=light
let g:solarized_termcolors=256
"colorscheme  molokai
"colorscheme  montz
"colorscheme  morning
"colorscheme darkblue

let g:solarized_termcolors=256
colorscheme solarized



set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows
set wildignore+=*.o 

let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 0
let g:ctrlp_max_files = 0
let g:ctrlp_max_height = 10
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(c|txt|exe|so|dll|o)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
let g:ctrlp_extensions = ['funky']
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
" '0' - disable this feature
let g:ctrlp_work_path_mode='ra'
let g:ctrlp_cmd='CtrlP' 
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']


let NERDTreeIgnore=['\.o','tags','cscope\.*']



nmap <Leader>tl :TListToggle<CR>      "快捷键设置
let g:Tlist_Ctags_Cmd='/usr/bin/ctags'          "ctags程序的路径
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "如果是c语言的程序的话，tagbar自动开启

"tagbar
let g:tagbar_sort = 0

"YCM
let mapleader = ","  "这个leader就映射为逗号"","
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   "按,jd 会跳转到定义
let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件
let g:ycm_server_keep_logfiles = 0
let g:ycm_server_log_level = 'debug'
let g:ycm_server_use_vim_stdout = 0
let g:ycm_disable_for_files_larger_than_kb = 0
let g:ycm_show_diagnostics_ui = 1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'markdown' : 1,
    \ 'unite' : 1,
    \ 'text' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1,
    \ 'xml'  : 1,
    \ 'cfg'  : 1,
    \}
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1
"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
" 开启基于tag的补全，可以在这之后添加需要的标签路径  
"let g:ycm_collect_identifiers_from_tags_files=1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_min_num_identifier_candidate_chars=1

" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=1
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1	
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>



"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#syntastic#enabled = 1

"AirlineTheme luna 
let g:airline_theme="solarized"

"if filereadable("prj.vim")
"    source prj.vim
"endif


set cscopequickfix=s-,c-,d-,i-,t-,e-

let g:EchoFuncShowOnStatus = 1
let g:EchoFuncAutoStartBalloonDeclaration = 1

nmap 1 <C-w>w
nmap 2 :NERDTreeToggle<cr>
"nmap 3 :TlistToggle<cr>
nmap 3 :TagbarToggle<cr>
nmap 4 :BufExplorer<cr>
nmap 5 :cd %:h<cr>  "跳到当前文件的目录,autochdir

map <leader>td <Plug>TaskList
set cc=80


map <F7> :cp<CR>
map <F8> :cn<CR>
map <F9> :bo copen 5<cr>
map <F12> :grep -ir <cword> *<CR>

"let Tlist_WinWidth = 45

"GITGUTTER
"let g:gitgutter_sign_column_always = 1
set signcolumn=yes
let g:GitGutterLineHighlightsEnable =1

set autowrite

let g:xml_syntax_folding = 1
"set foldmethod=syntax
"set foldlevel=3


