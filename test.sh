#!/bin/bash 
#mystring="hello world"
#echo "${mystring}hello bit" 
#
#拼接字符串
#str1=hello
#str2=world
#echo $str1$str2
#
#获取字符串长度
#str=hello
#echo ${#str}

##提取字符串
#str="helloworld"
#echo "${str:0:5}"

##提取字符串????
#string="bit is a great company" 
#echo `expr index '$string' great`

#命令代换
#echo `date`

#数学运算
#myint=100
#((myint++))
#echo $myint

#myint=100
#echo $myint
#res=$(( ++myint ))
#echo $myint
#echo $res

#条件测试
#read myint
#test $myint -eq 100
#echo $?

#测试整形
#read myint
#[ $myint -ne 100 ] #不等于
#[ $myint -lt 100 ] #小于
#[ $myint -gt 100 ] #大于

#测试字符串
#read mystr
#[ $mystr == "hello" ]
#[ $mystr != "hello" ]
#[ -z $mystr ] #空串
#[ -n $mystr ] #非空串
#[ X$mystr == "Xhello" ] #加上一个字符，防止用空字符串去比较
#[ -b /dev/sda ]
#[ -c /dev/tty ]
#[ -f ./test.sh ]

# 逻辑
#[ ! -d / ] #逻辑非
#read data1
#read data2
#[ $data1 -eq 100 -a $data2 -eq 200 ] #逻辑与
#[ $data1 -eq 100 -o $data2 -eq 200 ] #逻辑或
#echo $?


#if
#read mystring
#if [ X"$mystring" == "Xhello" ]
#then
#    echo "got hello"
#fi

##条件嵌套
#read data
#if [ $data -lt 100 ]
#then
#    if [ $data -eq 50 ]
#    then
#        echo "the data is equal to 50"
#    elif [ $data -lt 50 ]
#    then
#        echo "the data is less than 50"
#    else
#        echo "the data is great than 50 and less than 100"
#    fi
#else
#    echo "the data is greater than 100"
#fi

#空语句
#read data
#if [ $data -eq 100 ]
#then
#    :
#else
#    echo "AAAA"
#fi


##case每个分支必须由;;结束
#case $1 in
#    'start' | -s )
#        echo "start...done"
#        ;;
#    'stop' )
#        echo "stop...done"
#        ;;
#    'restart' )
#        echo "restart...done"
#        ;;
#    'status' )
#        echo "status... done"
#        ;;
#        * )
#            echo "default"
#            ;;
#esac


#循环语句
#for ((i=0;i<=10;i++))
#do
#    echo "hello $i"
#done

#for i in {1..10} #必须两个点
#do
#    echo "hello $i"
#done

#for i in {z..a}
#do
#    echo "hello $i"
#done

#for i in {a..e}{1..5} #a1 a2 a3 ...
#do
#    echo "hello $i"
#done


#for i in {a..e} {1..5} #a b c 1 2 3...
#do
#    echo "hello $i"
#done


#i=0
#while [ $i -le 5 ]
#do
#    echo "hello $i"
#    #(( i++ )) #(()) 与 let 效果一样
#    let i++
#done

##until循环
#i=0
#until [ $i -ge 10 ]
#do
#    echo "hello $i"
#    let i++
#done

#死循环
#while : #有空格
#do
#    echo "hello bit"
#done


#while true
#do
#    echo "hello"
#done


#until false
#do
#    echo "hello"
#done



#位置变量与特殊变量
#shift
#echo "before shift"
#echo "\$0 -> $0" #表示argv[0]
#echo "\$1 -> $1" 
#echo "\$2 -> $2"
#echo "\$3 -> $3"
#echo "\$# -> $#" #argc-1表示test.sh之后的参数个数
#echo "\$@ -> $@" #表示参数列表
#echo "\$? -> $?" #当前shell的进程号
#
#
#echo "after shift"
#shift 1
#echo "\$0 -> $0" #表示argv[0]
#echo "\$1 -> $1" 
#echo "\$2 -> $2"
#echo "\$3 -> $3"
#echo "\$# -> $#" #argc-1表示test.sh之后的参数个数
#echo "\$@ -> $@" #表示参数列表
#echo "\$? -> $?" #当前shell的进程号
#


#遍历命令行参数
#for i in $@
#do
#    echo $i
#done

#while [ $# -ne 0 ]
#do
#    echo "$1"
#    shift 1
#done


##函数
#function myfun()
#{
#    echo "i am function"
#}
#myfun

#传参
#function myfun()
#{
#    echo $0
#    echo $1
#    echo $2
#    echo $3
#    echo $#
#    echo $@
#}
#
#myfun 1 2 3 


##如何判定函数执行是否正确
#function myfun()
#{
#    echo "exec some code"
#    return 123
#}
#myfun
#if [ $? -eq 123 ]
#then
#    echo "exec success"
#else
#    echo "exec faild"
#fi

#
arr=(1 a 3.14 'b' "string")
#echo "${arr[0]}"
#echo "${arr[1]}"
#echo "${arr[2]}"
#echo "${arr[3]}"
#echo "${arr[4]}"

#获取数组长度
#echo ${#arr[@]}
#echo ${#arr[*]}

#遍历数组
#for ((i=0;i<${#arr[@]};i++))
#do
#    echo "$i -> ${arr[i]}"
#done
#for i in ${arr[@]}
#do
#    echo "$i"
#done




#信号
#trap 'echo "hello world"; ls' 3
#while :
#do
#    :
#done

echo "$RANDOM"













































