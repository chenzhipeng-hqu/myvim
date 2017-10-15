".vimrc for chenzhipeng

"---------------------------------------- MyVim Setting -------------------------------------"
set nocompatible         "disable vi
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Bundle 'VundleVim/Vundle.vim'

Plugin 'kshenoy/vim-signature'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'

Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

Plugin 'sheerun/vim-polyglot'

"Plugin 'vim-scripts/Conque-GDB'

Plugin 'mbbill/undotree'

Plugin 'tpope/vim-surround'

Plugin 'mhinz/vim-startify'

"Plugin 'luochen1990/rainbow'
Plugin 'kien/rainbow_parentheses.vim'

Plugin 'thaerkh/vim-workspace'

"Plugin 'majutsushi/tagbar'
Plugin 'Tagbar'

Plugin 'wesleyche/SrcExpl'

Plugin 'rking/ag.vim'

Plugin 'ctags.vim'

Plugin 'a.vim'

Plugin 'chxuan/change-colorscheme'

Plugin 'simplyzhao/cscope_maps.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'Shougo/neocomplcache.vim'

Plugin 'Mark'

Plugin 'bufexplorer.zip'
call vundle#end()

"filetype on
filetype plugin on
"filetype plugin indent on

syntax enable
syntax on  " 语法高亮
set completeopt=longest,menu
"set smartindent     "打开 'smartindent' 或 'cindent' 时，行的缩进根据 C 程序的要求自动调整
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
set fileencodings=utf-8,gbk,ucs-bom,GB2312,big5,cp936
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

"把 <leader> 设置成空格
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" Height of the command bar
set cmdheight=2
" A buffer becomes hidden when it is abandoned
set hid

" How many tenths of a second to blink when matching brackets
set mat=2

"let g:C_UseTool_cmake    = 'yes'
"let g:C_UseTool_doxygen  = 'yes'

" 总是显示状态栏
set laststatus=2  "0 永远不;1 只有用分割窗口的时候（默认）;2 永远有

" 高亮显示当前行/列
set cursorline
"set cursorcolumn
autocmd InsertLeave * se nocul  " 用浅色高亮当前行
autocmd InsertEnter * se cul    " 用浅色高亮当前行

"  设定配色方案
colorscheme 256-jungle

"重新设置语法高亮
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

"
hi LineNr               ctermfg=Blue    "   ctermbg=Black        "行号
"
"
hi Pmenu         ctermfg=Black           "ctermbg=Grey                "弹出菜单
hi PmenuSel      ctermfg=LightBlue       "ctermbg=DarkBlue            "菜单当前选项
hi Comment              ctermfg=Grey            "   ctermbg=Black        "   注释
hi Statement            ctermfg=Magenta    " ctermbg=Black           cterm=bold      "控制语句
hi Special              ctermfg=58             "ctermbg=Black           cterm=bold      "字符串中的特殊字符
hi String               ctermfg=Red         "    ctermbg=Black                           "字符串
hi Identifier           ctermfg=DarkBlue         "   ctermbg=Black           cterm=bold     "函数名称
hi Todo                 ctermfg=Black           ctermbg=Gray            cterm=bold      "TODO、HACK、FIXME等标签

"记住最后一次编辑的位置
autocmd BufReadPost *
              \ if line("'\"") > 0&&line("'\"")<=line("$") |
              \	exe "normal g'\"" |
              \ endif

"默认最大化窗口打开
au GUIEnter * simalt ~

"indent-guides
"随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=5
"------------------------------------------------ Setting ----------------------------------*/

"------------------ Ag Setting-------------------------*/
" When you press gv you Ag after the selected text*/
"vnoremap <silent> gv :call VisualSelection('gv', '')<CR>
" When you press <leader>r you can search and replace the selected text
"vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

"------------------ Ctrlp Setting-------------------------
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_cmd = 'CtrlP'
"map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm|neocomplcache)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_root_markers = ['pom.xml', '.p4ignore']
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

nnoremap <Leader>o :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>o :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
let g:ctrlp_by_filename = 1

" CtrlSF
command! CO CtrlSFOpen
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_ignore_dir = ['vendor', 'bower_components','node_modules']

"use ag as the ctrlp command
"let g:ctrlp_user_command = 'find %s -type f'
"let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden
"            \ --ignore .git
"            \ --ignore out
"            \ --ignore .svn
"            \ --ignore .hg
"            \ --ignore .DS_Store
"            \ -g ""'

" default colors/groups
" you may define your own colors in you vimrc file, in the form as below:

"----------------- mark Setting ------------------
hi MarkWord7  ctermbg=DarkCyan     ctermfg=Black  guibg=#8CCBEA    guifg=Black
hi MarkWord8  ctermbg=DarkGreen    ctermfg=Black  guibg=#A4E57E    guifg=Black
hi MarkWord9  ctermbg=DarkYellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi MarkWord10  ctermbg=DarkRed      ctermfg=Black  guibg=#FF7272    guifg=Black
hi MarkWord11  ctermbg=DarkMagenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black
hi MarkWord12  ctermbg=DarkBlue     ctermfg=Black  guibg=#9999FF    guifg=Black

"-------------- neocomplcache Setting ------------
let g:neocomplcache_enable_at_startup = 1

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
let g:neocomplcache_enable_at_startup = 1
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
nmap    gk :GitGutterPrevHunk<CR>
nmap    gj :GitGutterNextHunk<CR>
nmap    gd :GitGutterPreviewHunk<CR>
nmap    gr :GitGutterUndoHunk<CR>
nmap    gs :GitGutterStageHunk<CR>
nmap    gc :pclose<CR>

"------------------ startify Setting-------------------------
"设置书签
let g:startify_bookmarks            = [
            \ '~/Project/test.cpp',
            \]
"起始页显示的列表长度
let g:startify_files_number = 20
"自动加载session
let g:startify_session_autoload = 1
"过滤列表，支持正则表达式
let g:startify_skiplist = [
       \ '^/tmp',
       \ ]
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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
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
    "let g:tagbar_ctags_bin='ctags'    
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
nmap <F8> :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8
"let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "tags",
        \ "cscope.out",
        \ "Source_Explorer"
        \ ]
" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F11>"

"---------------------- BufExplorer Setting-------------------------------
noremap <silent> bu :BufExplorer<CR>


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

"command mode direction key
"cnoremap <c-h> <left>
"cnoremap <c-l> <right>
"cnoremap <c-j> <down>
"cnoremap <c-k> <up>

"系统剪贴板
vmap <c-c> "+y<esc>
nmap <c-v> "+gp<esc>
inoremap <c-v> <c-r>+

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

nmap ,vimrc :hide edit ~/.vimrc<cr>
nnoremap ; :

"git log
inoremap gitf  [feature][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left><Left><Left>
inoremap gitc  [config][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left><Left><Left>
inoremap gitb  [bugfix][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left><Left><Left>
inoremap gitm  [merge][][]<CR><CR>[what]<CR>[why]null<CR>[how]null<CR><UP><END><UP><UP><UP><UP><Left>

inoremap gdb    printf("\033[31;43m## [CZP] %s %s at %d\033[0m\n", __FILE__, __FUNCTION__, __LINE__);
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

