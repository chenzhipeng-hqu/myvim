#!/bin/sh
echo "Now is building ctags"
start=$(date +%s)
ctags --tag-relative -Rf

echo "Now is building cscope tags"

find `pwd -P` -type f -iname "*.c" -o -type f -iname "*.h" -o -type f -iname "*.cpp" -o -type f -iname "*.java" -o -type f -iname "*.sh"  -o -type f -iname "*.inl" > cscope.files

#如果路径中含有空格，需要使用sed对生成的cscope.files文件进行处理，命令：
sed -i 's/^/"/;s/$/"/' cscope.files

cscope -RbqC -i cscope.files

rm -rf cscope.files

end=$(date +%s)
time=$(( $end - $start ))
echo Total time:${time}sec

echo "finish"
