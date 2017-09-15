#!/bin/sh
string=`pwd -P`
ctags=${string//\//_}.tags
ctagsstring="/home/chenzhipeng3472/tags/lookuptags/"$ctags
echo "Now is building ctags"
start=$(date +%s)
ctags -R --tag-relative -f $ctagsstring
#ctags --langmap=c++:+.inl -R


echo "Now is building cscope tags"

cscope_tags=${string//\//_}.cscope_file
cscope_string="/home/chenzhipeng3472/tags/lookuptags/"$cscope_tags

find `pwd -P` -type f -iname "*.c" -o -type f -iname "*.h" -o -type f -iname "*.cpp" -o -type f -iname "*.java" -o -type f -iname "*.sh"  -o -type f -iname "*.inl" > "cscope.files"

#如果路径中含有空格，需要使用sed对生成的cscope.files文件进行处理，命令：
sed -i 's/^/"/;s/$/"/' cscope.files

cscope -RbqC -i cscope.files -f "$cscope_string"
rm -rf cscope.files

echo "Now is building filenametags"

end=$(date +%s)
time=$(( $end - $start ))
echo Total time:${time}sec


echo "finish"
