#!/usr/bin/perl
#����ԭ�ļ� �����޸��ļ����� 
#�߼��� �ȴ�ԭ�ļ�������Ϊ.bak�ļ� �ٴ���ԭ���ֵ����ļ����޸ĺ������д�����ļ���
# $^I�������ַ��������ַ���Ϊ�����ļ��ĺ�׺�� 

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