#!/usr/bin/perl
#备份原文件 批量修改文件内容 
#逻辑： 先打开原文件并改名为.bak文件 再创建原名字的新文件，修改后的内容写入新文件中
# $^I变量是字符串，该字符串为备份文件的后缀名 

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