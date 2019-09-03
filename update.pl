#!/usr/bin/perl
#备份原文件 批量修改文件内容 
#逻辑： 先打开原文件并改名为.bak文件 再创建原名字的新文件，修改后的内容写入新文件中
# $^I变量是字符串，该字符串为备份文件的后缀名 

#命令行来代替下面程序内容
#perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.dat
#-p 读取参数的每行内容并打印新内容给文件
#-i.bak 指定备份文件的后缀名  直接-i为不备份
#-w 开启警告模式
#-e 指定可执行的程序代码 多个代码时最后一个不用分号

use warnings;
use strict;

chomp(my $date =`date`);
$^I = ".bak";

while(<>){
    s/\AAuthor:.*/Author: Randal L. Schwartz/;
    s/\APhone:.*\n//;
    s/\ADate:.*/Date: $date/;
    print;
}