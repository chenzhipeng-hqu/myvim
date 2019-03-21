".vimrc for chenzhipeng

"---------------------------------------- MyVim Setting -------------------------------------"
" 安装 vundle
" git clone https://github.com/VundleVim/Vundle.vim.git
set nocompatible         "disable vi
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Bundle 'VundleVim/Vundle.vim'

Plugin 'kshenoy/vim-signature'          " 标记某一行，快速到标记的某一行

Plugin 'scrooloose/nerdtree'            " 文件目录
"Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'airblade/vim-gitgutter'         " 使用Gdiff 等命令
Plugin 'tpope/vim-fugitive'             " git 修改行 显示 ~（修改），+（增加），-（删除）

Plugin 'ctrlpvim/ctrlp.vim'             " 查找文件
"Plugin 'tacahiroy/ctrlp-funky'

Plugin 'vim-airline/vim-airline'        " 底行显示文件信息 美观
"Plugin 'vim-airline/vim-airline-themes'

"Plugin 'sheerun/vim-polyglot'

Plugin 'vim-scripts/Conque-GDB'         " gdb 调试用

Plugin 'mbbill/undotree'                " 永久记录撤销内容

"Plugin 'tpope/vim-surround'

"Plugin 'mhinz/vim-startify'

"Plugin 'luochen1990/rainbow'
Plugin 'kien/rainbow_parentheses.vim'   " 彩虹括号

"Plugin 'Alternate-workspace'

Plugin 'Tagbar'                         " 类似sourceinsight 的文件结构显示，比taglist更美观

"Plugin 'wesleyche/SrcExpl'

Plugin 'rking/ag.vim'                   " ag 查找，比ctags和cscope 更快

Plugin 'ctags.vim'

"Plugin 'a.vim'

"Plugin 'chxuan/change-colorscheme'

Plugin 'simplyzhao/cscope_maps.vim'     " 查找函数定义及引用，变量定义及引用位置，类似sourceinsight 的 ctrl + /

Plugin 'scrooloose/nerdcommenter'       " 多行注释更快捷

"Plugin 'Shougo/neocomplcache.vim'       " 补全

Plugin 'Mark'                           " 空格 + m 高亮显示当前字符串

Plugin 'bufexplorer.zip'                " 打开的文件 浏览

Plugin 'CCTree'                         " 调用树显示

Plugin 'godlygeek/tabular'  "代码对齐

Bundle 'juneedahamed/svnj.vim'

Plugin 'Markdown-syntax'                " mark down 语法高亮

Plugin 'plasticboy/vim-markdown'        " mark 功能

Plugin 'suan/vim-instant-markdown'

"Plugin 'Syntastic'

Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-scripts/indentpython.vim'

" python自动补全
Bundle 'davidhalter/jedi-vim'
Bundle "klen/python-mode"

call vundle#end()

"filetype on
"filetype plugin indent on

syntax enable
syntax on  " 语法高亮
set completeopt=longest,menu
set smartindent     "打开 'smartindent' 或 'cindent' 时，行的缩进根据 C 程序的要求自动调整
set ignorecase    "忽略大小写  noignorecase  精确匹配大小写
set incsearch   "打开显示查找匹配过程  noincsearch 打开显示查找匹配过程
set hlsearch     "高亮搜索结果  nohlsearch 关闭高亮显示查找的文本
set nu              "显示行号 set number
set ic     " 忽略字符大小写
set noswapfile
set nobackup
set nowb
"set ai      "自动缩进
set showmatch       "括号匹配高亮显示
set nowrapscan  "禁止循环查找方式  wrapscan 启用循环查找方式
"set fileencodings=utf-8,gbk,ucs-bom,GB2312,big5,cp936
set fileencodings=utf-8,GB2312,gb18030,gbk,ucs-bom,big5,cp936,latin1  "顺序可以解决乱码问题
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数,  设定 tab 长度为 4
set tabstop=4
" 设置格式化时制表符占用空格数,表示每一级缩进的长度 设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"set autochdir               " 自动切换当前目录为当前文件所在的目录
set helplang=cn
" 显示tab和空格 可打印字符显示开关
"set list
" 设置tab和空格样式
"set lcs=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
highlight LeaderTab guifg=#666666
match LeaderTab /^\t/
set wildmenu        "vim自身命令行模式智iii能补全iii 匹配行首tab
set backspace=2

"把 <leader> 设置成空格
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Height of the command bar
set cmdheight=2
" A buffer becomes hidden when it is abandoned
set hid

" How many tenths of a second to blink when matching brackets
set mat=2

set updatetime=100

"let g:C_UseTool_cmake    = 'yes'
"let g:C_UseTool_doxygen  = 'yes'

" 总是显示状态栏
set laststatus=2  "0 永远不;1 只有用分割窗口的时候（默认）;2 永远有

set guifont=Courier_New:h10:cANSI   " 设置字体

" 高亮显示当前行/列
set cursorline
"set cursorcolumn
autocmd InsertLeave * se nocul  " 用浅色高亮当前行
autocmd InsertEnter * se cul    " 用浅色高亮当前行

"  设定配色方案
colorscheme 256-jungle

"记住最后一次编辑的位置
autocmd BufReadPost *
              \ if line("'\"") > 0&&line("'\"")<=line("$") |
              \	exe "normal g'\"" |
              \ endif

"默认最大化窗口打开
au GUIEnter * simalt ~

"indent-guides
"随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=5
"------------------------------------------------ Setting ----------------------------------*/

"------------------ Ag Setting-------------------------*/
" When you press gv you Ag after the selected text*/
"vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
" When you press <leader>r you can search and replace the selected text
"vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>
nmap <leader>a  :Ag 

"------------------ Ctrlp Setting-------------------------
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_cmd = 'CtrlP'
"map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm|neocomplcache)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|.o)$',
    \ }
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode="rw"
let g:ctrlp_root_markers = ['pom.xml', '.p4ignore']
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=50
let g:ctrlp_follow_symlinks=1

"nnoremap <Leader>o :CtrlPFunky<Cr>
"" narrow the list down with a word under cursor
"nnoremap <Leader>o :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
"let g:ctrlp_funky_syntax_highlight = 1
"let g:ctrlp_extensions = ['funky']
"let g:ctrlp_by_filename = 1

" CtrlSF
"command! CO CtrlSFOpen
"let g:ctrlsf_winsize = '30%'
"let g:ctrlsf_auto_close = 0
"let g:ctrlsf_ignore_dir = ['vendor', 'bower_components','node_modules']

"use ag as the ctrlp command
"let g:ctrlp_user_command = 'find %s -type f'
"调用ag进行搜索提升速度，同时不使用缓存文件
"if executable('ag')
    "set grepprg=ag\ --nogroup\ --nocolor
    "let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden
            "\ --ignore .git
            "\ --ignore out
            "\ --ignore .svn
            "\ --ignore .hg
            "\ --ignore .DS_Store
            "\ -g ""'
    "let g:ctrlp_use_caching = 0
"endif

" default colors/groups
" you may define your own colors in you vimrc file, in the form as below:

"----------------- vim-signature Setting ------------------
nmap <F10> :marks<cr>
"nmap <space>m m/

"----------------- mark Setting ------------------
hi MarkWord7  ctermbg=DarkCyan     ctermfg=Black  guibg=#8CCBEA    guifg=Black
hi MarkWord8  ctermbg=DarkGreen    ctermfg=Black  guibg=#A4E57E    guifg=Black
hi MarkWord9  ctermbg=DarkYellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi MarkWord10  ctermbg=DarkRed      ctermfg=Black  guibg=#FF7272    guifg=Black
hi MarkWord11  ctermbg=DarkMagenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black
hi MarkWord12  ctermbg=DarkBlue     ctermfg=Black  guibg=#9999FF    guifg=Black

"------------------- svn Setting -----------------
let g:svnj_custom_statusbar_ops_hide = 1
let g:svnj_browse_cache_all = 1
"let g:svnj_allow_leader_mappings=1

"-------------- neocomplcache Setting ------------
"let g:neocomplcache_enable_at_startup = 1

"----------------- Nerdtree Setting ------------------
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let g:NERDTree_title='NERD Tree'
"let NERDTreeShowLineNumbers=1
"let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 在终端启动vim时，共享NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
nmap <F12> :NERDTreeToggle<CR>

"------------------ undotree Setting-------------------------
set undodir=~/.undodir/
set undofile
nnoremap uo :UndotreeToggle<cr>

"------------------ GitGutter Setting-------------------------
let     g:gitgutter_diff_args = '-w'
"let     g:gitgutter_realtime = 0
let     g:gitgutter_grep_command = 'grep'
nmap    gk :GitGutterPrevHunk<CR>
nmap    gj :GitGutterNextHunk<CR>
nmap    gd :GitGutterPreviewHunk<CR>
nmap    gr :GitGutterUndoHunk<CR>
nmap    gs :GitGutterStageHunk<CR>
nmap    gc :pclose<CR>

"------------------ startify Setting-------------------------
"设置书签
"let g:startify_bookmarks            = [
            "\ '~/Project/test.cpp',
            "\]
"起始页显示的列表长度
"let g:startify_files_number = 20
"自动加载session
"let g:startify_session_autoload = 1
"过滤列表，支持正则表达式
"let g:startify_skiplist = [
       "\ '^/tmp',
       "\ ]
"自定义Header和Footer
"let g:startify_custom_header = [
"            \ '+------------------------------+',
"            \ '|                              |',
"            \ '|    Still waters run deep!    |',
"            \ '|                              |',
"            \ '+----------------+-------------+',
"            \]
"let g:startify_custom_footer = [
"            \ '+------------------------------+',
"            \ '|     Keep an open mind!       |',
"            \ '+----------------+-------------+',
"            \]

"----------------- Airline Setting ----------------
"airline
""设置默认启动
"Thisabled by default; add the following to your vimrc to enable the
""extension:
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"显示 buffer 的数字标签
"let g:airline#extensions#tabline#buffer_nr_show = 1

"----------------- vim-workspace Setting ----------------
"<leader>s新建session
"nmap <c-s> :ToggleWorkspace<CR>
"修改新建的会话名字
let g:workspace_session_name = 'Session.vim'
"开启撤销记录永久保存
let g:workspace_persist_undo_history = 1
let g:workspace_undodir='.undodir'
"开启文件自动保存
let g:workspace_autosave_always = 1
let g:workspace_autosave_ignore = ['gitcommit']

"-----------------tagbar Setting ----------------
if !empty("$HOME/.vim/bundle/tagbar")
"    set tags=tags;
    "set tags+=/usr/include/c++/tags
    "set tags+=/usr/local/include/tags
"    set tags+=./tags
    let g:tagbar_autofocus=1
"    let g:tagbar_sort=0  "关闭排序,即按标签本身在文件中的位置排序
    "开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
    let g:tagbar_autopreview = 1
    ""设置tagbar使用的ctags的插件,必须要设置对    
    "let g:tagbar_ctags_bin='/usr/bin/ctags'
    "设置tagbar的窗口宽度    
    "let g:tagbar_width=30    
    ""设置tagbar的窗口显示的位置,为左边    
    "let g:tagbar_right=1    
    "打开文件自动 打开tagbar    
    "autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()    
    let g:tagbar_right=1
    let g:tagbar_zoomwidth=1
    nnoremap <silent> tl :TagbarToggle<CR>
endif

"-----------------cscope Setting ----------------
if has("cscope")
    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set csprg=/usr/bin/cscope
    set cscopetag   "使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳转
    "set csto=0    "" 设置cstag命令查找次序：0先找cscope数据库再找标签文件；1先找标签文件再找cscope数据库; 缺省值为 0
    set cst      "同时搜索cscope数据库和标签文件
    set nocsverb
    "set cscopequickfix=s-,c-,d-,i-,t-,e-
    set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
    " add any database in current directory
"    if filereadable("cscope.out")
"        cs add cscope.out
    " else add the database pointed to by environment variable
"    elseif $CSCOPE_DB != ""
"        cs add $CSCOPE_DB
"    endif
    " show msg when any other cscope db added
    "set cscopeverbose
	set cspc=3    "会显示文件路径的最后 3 个部分，包括文件名本身

    nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <leader>e :cs find e <C-R>=expand("<cWORD>")<CR><CR>
    nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    "nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
	nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    nmap ,c  :Rgrep <C-R>=expand("<cword>")<CR> *.c<CR><CR>
    nmap ,j  :Rgrep <C-R>=expand("<cword>")<CR> *.java<CR><CR>
    nmap ,h  :Rgrep <C-R>=expand("<cword>")<CR> *.h<CR><CR>
    nmap ,mk :Rgrep <C-R>=expand("<cword>")<CR> *.mk<CR><CR>
    nmap ,f  :find <cword>
endif

"function! LoadCscopeTag()
	 "let f = getcwd()
     "let tagsfile =   "/home/chenzhipeng3472/tags/CscopeTags/".substitute(f,'/','_','g').".tags"
     "let scopefile =  "/home/chenzhipeng3472/tags/CscopeTags/".substitute(f,'/','_','g').".cscope_file"
     "if filereadable(tagsfile)
          "execute  "set tags =".tagsfile
     "endif
     "if filereadable(scopefile)
          "execute  "cs add  ".scopefile
     "endif
"endfunction
"au  VimEnter * call LoadCscopeTag()    " 启动vim时，自动执行这个函数。

"---------------------- rainbow_parentheses Setting---------
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['red',         'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"---------------------- SrcExpl Setting---------
"nmap <F9> :SrcExplToggle<CR>
"let g:SrcExpl_winHeight = 8
""let g:SrcExpl_refreshTime = 100
"let g:SrcExpl_jumpKey = "<ENTER>"
"let g:SrcExpl_gobackKey = "<SPACE>"
"" // In order to Avoid conflicts, the Source Explorer should know what plugins
"" // are using buffers. And you need add their bufname into the list below
"" // according to the command ":buffers!"
"let g:SrcExpl_pluginList = [
        "\ "tags",
        "\ "cscope.out",
        "\ "Source_Explorer"
        "\ ]
"" // Enable/Disable the local definition searching, and note that this is not
"" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
"" // It only searches for a match with the keyword according to command 'gd'
"let g:SrcExpl_searchLocalDef = 1

"" // Do not let the Source Explorer update the tags file when opening
"let g:SrcExpl_isUpdateTags = 0

"" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
"" //  create/update a tags file
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

"" // Set "<F12>" key for updating the tags file artificially
"let g:SrcExpl_updateTagsKey = "<F11>"

"---------------------- BufExplorer Setting-------------------------------
noremap <silent> bu :BufExplorer<CR>

"---------------------- Conque GDB Setting-------------------------------
"待调试文件位于屏幕上方
let g:ConqueGdb_SrcSplit = 'above'
""保存历史
let g:ConqueGdb_SaveHistory = 1
"修改Conque GDB的Leader键
let g:ConqueGdb_Leader = ','
"总是显示颜色
let g:ConqueTerm_Color = 2 
"程序结束运行时，关闭Conque GDB窗口
let g:ConqueTerm_CloseOnEnd = 1  
"Conque Term配置错误时显示警告信息
let g:ConqueTerm_StartMessages = 0 

"---------------------- markdown Setting-------------------------------
let g:instant_markdown_autostart = 1


"---------------------- python Setting-------------------------------
"let g:completor_python_binary = '/usr/lib/python3/dist-packages/jedi'


"---------------------- syntastic Setting-------------------------------
""设置error和warning的标志
"let g:syntastic_enable_signs = 1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='►'
""总是打开Location List（相当于QuickFix）窗口，如果你发现syntastic因为与其他插件冲突而经常崩溃，将下面选项置0
"let g:syntastic_always_populate_loc_list = 1
""自动打开Locaton List，默认值为2，表示发现错误时不自动打开，当修正以后没有再发现错误时自动关闭，置1表示自动打开自动关闭，0表示关闭自动打开和自动关闭，3表示自动打开，但不自动关闭
"let g:syntastic_auto_loc_list = 1
""修改Locaton List窗口高度
"let g:syntastic_loc_list_height = 5
""打开文件时自动进行检查
"let g:syntastic_check_on_open = 1
""自动跳转到发现的第一个错误或警告处
"let g:syntastic_auto_jump = 1
""进行实时检查，如果觉得卡顿，将下面的选项置为1
"let g:syntastic_check_on_wq = 0
""高亮错误
"let g:syntastic_enable_highlighting=0
""让syntastic支持C++11
"let g:syntastic_cpp_remove_include_errors = 1
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
""设置pyflakes为默认的python语法检查工具
"let g:syntastic_python_checkers = ['pyflakes']
""修复syntastic使用:lnext和:lprev出现的跳转问题，同时修改键盘映射使用sn和sp进行跳转
"function! <SID>LocationPrevious()
  "try
    "lprev
  "catch /^Vim\%((\a\+)\)\=:E553/
    "llast
  "endtry
"endfunction
"function! <SID>LocationNext()
  "try
    "lnext
  "catch /^Vim\%((\a\+)\)\=:E553/
    "lfirst
  "endtry
"endfunction
"nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
"nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
"nmap <silent> sp    <Plug>LocationPrevious
"nmap <silent> sn    <Plug>LocationNext
""关闭syntastic语法检查, 鼠标复制代码时用到, 防止把错误标志给复制了
"nnoremap <silent> <Leader>ec :SyntasticToggleMode<CR>
"function! ToggleErrors()
    "let old_last_winnr = winnr('$')
    "lclose
    "if old_last_winnr == winnr('$')
        "" Nothing was closed, open syntastic error location panel
        "Errors
    "endif
"endfunction

"---------------------- ycm Setting-------------------------------
"set completeopt=longest,menu
""补全后自动关机预览窗口"
"let g:ycm_autoclose_preview_window_after_completion=1
""离开插入模式后自动关闭预览窗口"
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
""回车即选中当前项"
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'
""上下左右键行为"
"inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
"inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
"inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
"inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

" 寻找全局配置文件
"let g:ycm_global_ycm_extra_conf = './'
"let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" 禁用syntastic来对python检查
let g:syntastic_ignore_files=[".*\.py$"] 
""python解释器路径"
"let g:ycm_path_to_python_interpreter='/usr/bin/python3'
" 使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1
" 开启语义补全
" 修改对C语言的补全快捷键，默认是CTRL+space，修改为ALT+;未测出效果
let g:ycm_key_invoke_completion = '<M-;>'
" 设置转到定义处的快捷键为ALT+G，未测出效果
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR> 
"关键字补全 自动开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
" 在接受补全后不分裂出一个窗口显示接受的项
set completeopt-=preview
" 让补全行为与一般的IDE一致
set completeopt=longest,menu
" 不显示开启vim时检查ycm_extra_conf文件的信息"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0
" 每次重新生成匹配项，禁止缓存匹配项
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
" 在注释中也可以补全
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
""开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=1
" 错误标识符
let g:ycm_error_symbol='乄'
" 警告标识符
let g:ycm_warning_symbol='〇'
" 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_use_ultisnips_completer=0
"与syntastic有冲突，建议关闭
let g:ycm_show_diagnostics_ui = 1
"在代码中高亮显示YCM诊断对应的内容，如果关闭，则会关闭错误和警告高亮功能，0表示关闭
"let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_echo_current_diagnostic = 1

" 每次获取新诊断数据时自动填充位置列表，1表示打开，默认关闭以免干扰可能已放置在位置列表中的其他数据。在vim中用:help location-list命令查看位置列表的具体解释"
let g:ycm_always_populate_location_list = 1
"在强制编译后自动打位置列表并用诊断信息填充，所谓位置列表就是标出各错误或警告对应在哪些行的小窗口，可以实现直接跳转到错误行
let g:ycm_open_loclist_on_ycm_diags = 1

function! s:CustomizeYcmLocationWindow()
  " Move the window to the top of the screen.
  wincmd K
  " Set the window height to 5.
  5wincmd _
  " Switch back to working window.
  wincmd p
endfunction

autocmd User YcmLocationOpened call s:CustomizeYcmLocationWindow()


"------------------------------------------ Shotcut Setting ---------------------------------
" 定义快捷键到行首和行尾
nmap lb 0
nmap le $

" Smart way to move between windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"insert mode direction key
inoremap <C-h> <Left>
inoremap <c-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <del>
inoremap <C-b> <BS>
inoremap <C-a> <home>
inoremap <C-e> <end>

"command mode direction key
"cnoremap <c-h> <left>
"cnoremap <c-l> <right>
"cnoremap <c-j> <down>
"cnoremap <c-k> <up>

"系统剪贴板
"vmap <c-c> "+y<esc>
"nmap <c-v> "+gp<esc>
"inoremap <c-v> <c-r>+

vmap 0p "0p
vmap ay "ay
map ap "ap


""设置切换Buffer快捷键"
nnoremap bn :bn<CR>
nnoremap bp :bp<CR>
"nnoremap bu :buffers<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
"nnoremap bu :ls<CR>:b<Space>

"在右下角显示 quickfix
nnoremap col  :colder<CR>
nnoremap cne  :cnewer<CR>
nnoremap co  <Esc>:botright copen<CR>
"nnoremap <F2> :botright copen<CR>
"inoremap <F2> <Esc>:botright copen<CR>
nnoremap cl :cclose<CR>
"inoremap cl <Esc>:cclose<CR>
nmap <F3> :cprev<cr>
nmap <F4> :cnext<cr>
nmap cp :cp<cr>
nmap cn :cn<cr>
" Fast saving
nmap <space>w <Esc>:mks!<cr>
nmap <c-s> <Esc>:mks!<cr>
"inoremap <leader>w <Esc>:mks!<cr>i

nmap ,vimrc :hide edit ~/.vimrc<cr>
"nnoremap ; :

"git log
inoremap gitf  [feature][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left><Left><Left>
inoremap gitc  [config][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left><Left><Left>
inoremap gitb  [bugfix][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left><Left><Left>
inoremap gitm  [merge][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left>

"inoremap gdb    printf("\033[31;43m## [CZP] %s %s at %d\033[0m\n", __FILE__, __FUNCTION__, __LINE__);
inoremap gdb    printf("\033[31;43m## [CZP] %s %s at %d\033[0m\n", __FILE__, __FUNCTION__, __LINE__);<CR>printf(" \n",);<Left><Left><Left><Left><Left><Left><Left><Esc>
inoremap kk     //add czp@<C-R>=strftime("%Y/%m/%d")<CR>
"inoremap merr   #error  <C-R>=strftime("%H-%M-%s")<CR>
inoremap merr   #error  ""<LEFT>
inoremap dlog   chenzhipeng3472@<C-R>=strftime("%Y/%m/%d")<CR>
inoremap imain    int main(int argc, char *argv[])<CR>{<CR><CR>return 0;<CR>}<CR><UP><UP><UP><Tab>

" 多窗口改变大小
nmap    w<Up>  :resize +3<CR>
nmap    w<Down>  :resize -3<CR>
nmap    w<Left>  :vertical resize -3<CR>
nmap    w<Right>  :vertical resize +3<CR>

function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose
        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction
nmap <leader>z :call Zoom()<CR>

" 状态栏显示函数名
fun! ShowFuncName()
    let lnum = line(".")
    let col = col(".")
    echohl ModeMsg
    echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
    echohl None
    call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map ff :call ShowFuncName() <CR>

"------End .vimrc------

