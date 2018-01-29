" Vim color file
" Maintainer:	Piotr Husiatyński <phusiatynski@gmail.com>

set t_Co=256  " 开启256颜色支持
set background=dark
let g:colors_name="256-jungle"

let python_highlight_all = 1
let c_gnu = 1


hi Normal       ctermfg=LightGray   "ctermbg=Black   " 正常模式下字体颜色和背景色
"hi Normal	    ctermfg=253         ctermbg=234         cterm=None
"hi ColorColum           ctermfg=White           ctermbg=Grey    " 光标所在列
"hi ColorColumn          ctermfg=White           ctermbg=Grey
hi CursorColumn         ctermfg=White           ctermbg=Grey
hi CursorLine           ctermfg=LightBlue       ctermbg=Black
hi Cursor       ctermfg=253         ctermbg=57          cterm=None
hi SpecialKey	ctermfg=70          ctermbg=None        cterm=None
"hi SpecialKey           ctermfg=Red             ctermbg=Black           cterm=bold      "
hi Directory	ctermfg=57          ctermbg=254         cterm=None
"hi Directory            ctermfg=Blue            ctermbg=Black
hi ErrorMsg     ctermfg=160         ctermbg=245         cterm=None
"hi ErrorMsg             term=standout
"hi ErrorMsg             ctermfg=LightBlue       ctermbg=DarkBlue
hi PreProc	    ctermfg=243         ctermbg=None        cterm=Bold
"hi PreProc              ctermfg=LightBlue            ctermbg=Black                           "预处理
hi Search	    ctermfg=125         ctermbg=None        cterm=Bold
"hi Search               ctermfg=Black           ctermbg=DarkGrey
hi Type		    ctermfg=166         ctermbg=None        cterm=Bold
"hi Type                 ctermfg=Blue            ctermbg=Black           cterm=bold      "数据类型
hi Statement	ctermfg=172         ctermbg=None        cterm=Bold
"hi Comment	    ctermfg=50		ctermbg=None        cterm=None
hi LineNr	    ctermfg=244         ctermbg=233         cterm=None
hi NonText	    ctermfg=105         ctermbg=None        cterm=Bold
"hi NonText              ctermfg=LightBlue       ctermbg=Black
hi DiffText	    ctermfg=165         ctermbg=44        cterm=None
hi Constant	    ctermfg=76          ctermbg=None        cterm=None
"hi Constant             ctermfg=Blue            ctermbg=Black           cterm=bold      "常量
hi Todo         ctermfg=162         ctermbg=None        cterm=Bold
hi Identifier	ctermfg=142         ctermbg=None        cterm=Bold
hi Error	    ctermfg=None        ctermbg=196         cterm=Bold
"hi Error                term=bold               cterm=bold
"hi Error                ctermfg=LightBlue       ctermbg=Black
hi Special	    ctermfg=172         ctermbg=None        cterm=Bold
hi Ignore       ctermfg=221         ctermbg=None        cterm=Bold
"hi Ignore               ctermfg=LightBlue       ctermbg=Black
hi Underline    ctermfg=147         ctermbg=None        cterm=Italic
"hi Underlined           ctermfg=LightBlue       ctermbg=Black           cterm=underline

hi FoldColumn	ctermfg=132         ctermbg=None        cterm=None
"hi FoldColumn           ctermfg=LightBlue       ctermbg=Black
hi Folded       ctermfg=132         ctermbg=None        cterm=Bold
"hi Folded               ctermfg=DarkBlue        ctermbg=Black           cterm=bold
hi Macro        ctermfg=91	ctermbg=None        cterm=Bold
hi Include	ctermfg=132	ctermbg=None        cterm=Bold
hi Visual       ctermfg=248         ctermbg=238         cterm=None
"hi Visual               term=bold               cterm=bold
"hi Visual               ctermfg=Black           ctermbg=Grey

hi Pmenu        ctermfg=62          ctermbg=233         cterm=None
hi PmenuSel     ctermfg=69          ctermbg=232         cterm=Bold
hi PmenuSbar    ctermfg=247         ctermbg=233         cterm=Bold
hi PmenuThumb   ctermfg=248         ctermbg=233         cterm=None

hi StatusLineNC ctermfg=248         ctermbg=239         cterm=None
"hi StatusLineNC         term=bold               cterm=bold
"hi StatusLineNC         ctermfg=Black           ctermbg=Grey
hi StatusLine   ctermfg=39          ctermbg=239         cterm=None
"hi StatusLine           term=bold               cterm=bold
"hi StatusLine           ctermfg=Black           ctermbg=Grey
hi VertSplit    ctermfg=239         ctermbg=239         cterm=None
"hi VertSplit            ctermfg=Grey            ctermbg=Grey

hi TabLine      ctermfg=245         ctermbg=239         cterm=None
hi TabLineFill  ctermfg=239         ctermbg=239
hi TabLineSel   ctermfg=104         ctermbg=236         cterm=Bold

"hi WarningMsg           term=standout
"hi WarningMsg           ctermfg=LightBlue       ctermbg=DarkBlue

"hi ModeMsg              term=bold               cterm=bold
"hi ModeMsg              ctermfg=LightBlue       ctermbg=Black

"hi MoreMsg              term=bold               ctermfg=LightGreen
"hi MoreMsg              ctermfg=LightBlue       ctermbg=Black

"hi Question             term=standout           gui=bold
"hi Question             ctermfg=LightBlue       ctermbg=Black

"hi Title                ctermfg=LightBlue       ctermbg=Black
"hi Number               ctermfg=Green         "   ctermbg=Black                           "数字
"hi cCppString           ctermfg=Red             ctermbg=Black                           "Cpp中的字符串
"hi IncSearch            ctermfg=Black           ctermbg=DarkGrey

"hi Operator             ctermfg=LightGreen                                      "yun suan fu
"hi browseSynopsis       ctermfg=LightBlue       ctermbg=Black
"hi browseCurDir         ctermfg=LightBlue       ctermbg=Black
"hi favoriteDirectory    ctermfg=LightBlue       ctermbg=Black
"hi browseDirectory      ctermfg=LightBlue       ctermbg=Black
"hi browseSuffixInfo     ctermfg=LightBlue       ctermbg=Black
"hi browseSortBy         ctermfg=LightBlue       ctermbg=Black
"hi browseFilter         ctermfg=LightBlue       ctermbg=Black
"hi browseFiletime       ctermfg=LightBlue       ctermbg=Black
"hi browseSuffixes       ctermfg=LightBlue       ctermbg=Black
"
"hi TagListComment       ctermfg=LightBlue       ctermbg=Black
"hi TagListFileName      ctermfg=LightBlue       ctermbg=Black

"重新设置语法高亮
"if version > 580
    hi clear
"    if exists("syntax_on")
"        syntax reset
"    endif
"endif
"
""
hi LineNr               ctermfg=Blue    "   ctermbg=Black        "行号
"
"
hi Pmenu         ctermfg=Black           "ctermbg=Grey                "弹出菜单
hi PmenuSel      ctermfg=LightBlue       "ctermbg=DarkBlue            "菜单当前选项
hi Comment              ctermfg=DarkGrey            "   ctermbg=Black        "   注释
hi Statement            ctermfg=Magenta    " ctermbg=Black           cterm=bold      "控制语句
hi Special              ctermfg=58             "ctermbg=Black           cterm=bold      "字符串中的特殊字符
hi String               ctermfg=Red         "    ctermbg=Black                           "字符串
hi Identifier           ctermfg=DarkBlue         "   ctermbg=Black           cterm=bold     "函数名称
hi Todo                 ctermfg=Black           ctermbg=Gray            cterm=bold      "TODO、HACK、FIXME等标签

"vim: sw=4
