#!/usr/bin/perl
#����ԭ�ļ� �����޸��ļ����� 
#�߼��� �ȴ�ԭ�ļ�������Ϊ.bak�ļ� �ٴ���ԭ���ֵ����ļ����޸ĺ������д�����ļ���
# $^I�������ַ��������ַ���Ϊ�����ļ��ĺ�׺�� 

#�����������������������
#perl -p -i.bak -w -e 's/Randall/Randal/g' fred*.dat
#-p ��ȡ������ÿ�����ݲ���ӡ�����ݸ��ļ�
#-i.bak ָ�������ļ��ĺ�׺��  ֱ��-iΪ������
#-w ��������ģʽ
#-e ָ����ִ�еĳ������ �������ʱ���һ�����÷ֺ�

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