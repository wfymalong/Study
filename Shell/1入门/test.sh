#! /bin/bash
echo "Hello world!"
# 变量 不能有空格
your_name="小明"
echo ${your_name} # 推荐写法
# 循环得到目录文件
for skill in `ls`; do
    echo "目录文件名有:${skill}"
done
# 删除变量
unset your_name
echo "your_name has been delete ${your_name}"

# 只读变量
my_name="小芳"
readonly my_name
# unset my_name
echo "cannot delete my_name${my_name}"

# 字符串
str='单引号：1.单引号的会原样输出,变量无效 2不能转译'
doubleStr='双引号：1.双引号可以有变量 2.可以用转译字符'
# 拼接字符串
echo ${str} ${doubleStr}
# 字符串长度
echo "\${#str}:${#str}"
# 提取字符串
echo "提取str0-20的字符:（${str:0:20}）"
# 查找字符串
echo "查找字符串：" `expr index "$str" 1`

# 数组
array_name=(1 2 3 45 5)
echo "读取数组第一位\${array_name[0]}" ${array_name[0]}
echo "读取整个数组\${array_name[@]}" ${array_name[@]}
echo "取得数组长度\${#array_name[@]}" ${#array_name[@]}

# 多行注释
:<<!
多行注释
多行注释
多行注释
多行注释
!

# 传递参数
echo "\$0文件名：$0"
echo "\$1第一个参数：$1"
echo "\$2第二个参数：$2"
echo "\$#传递到脚本的参数个数：$#"
echo "\$*显示所有的参数：$*"
echo "\$\$"

