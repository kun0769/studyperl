#!/usr/bin/perl
#������Ӱ�Ȩ

use warnings;
use strict;

$^I=".bak";

while(<>){
    if(/\A#!/){
       $_ .= "## Copyright (c) 2019 by Kun.\n"; 
    }   
    print;
}
