use strict;
use warnings;
use autodie;

#@rocks = qw/ bedrock slate rubble granite/;
#while(($index, $value) = each @rocks){
#	print "$index: $value\n";
#}
#
#
#@rocks = qw/talc quartz jade obsidian/;
#print "How many rocks do you have?\n";
#print "I have ",@rocks," rocks!\n" ;
#print "I have ",scalar @rocks," rocks!\n" ;

#chomp (@line=<STDIN>);
#print @line;


#@line = <STDIN>;
#@line = reverse @line;
#print @line;


#@line = qw/fred barney dino wilma pebbles bamm-bamm/;
#print "Enter some numbers from 1-7 ,then press Ctrl-d:\n";
#chomp(@number=<STDIN>);
#foreach(@number){
#	print "$line[$_-1]\n";
#}

#print "Enter some char:\n";
#@line = sort (@line=<STDIN>);
#chomp @line;
#print @line;

#print sort <STDIN>;


#sub total{
#	my $sum=0;	
#	foreach (@_){
#		 $sum += $_;
#	}
#	$sum;
#}
#
#my @fred =qw/1 3 5 7 9/;
#my $fred_total =total(@fred);
#print "the total of \@fred is $fred_total.\n";
#print "enter some number:\n";
#my $num_total= total(<STDIN>);
#print "the total of those number is $num_total.\n"



#sub total{
#	my $sum =0;
#	foreach(@_){
#		$sum +=$_;
#	}
#	$sum;
#}
#
#my @fred =(1..1000);
#my $fred_total = &total(@fred);
#print "the sum of 1-1000 is $fred_total.\n";

#�����б������
#sub total{
#	my $sum =0;
#	foreach (@_){
#		$sum +=$_;
#	}
#	$sum;
#}

##�����б��ƽ��ֵ
#sub average{
#	if(@_ == 0){ return}
#	my $count = @_;
#	my $sum = &total(@_);
#	$sum/$count;
##	total(@_)/@_;
#}
#
##�ó���ƽ��ֵ�����
#sub above_average{
#	my $average = average(@_);
#	my @list;
#	foreach my $element(@_){
#		if ($element > $average){
#			push @list, $element;
#		}
#	}
#	@list;
#}
#
#my @fred = above_average(1..10);
#print "\@fred is @fred.\n";

#use v5.10;
#
#sub greet{
#	state $last_person;
#	my $name = shift;
#	print "Hi $name";
#	if(defined $last_person){
#		print " $last_person is also here!\n";
#	}
#	else{
#		print " You are the first one here!\n";
#	}
#	$last_person = $name;
#}
#
#greet("Fred");
#greet("Barney");

#use v5.24;
#
#sub greet{
#	state @name;
#	my $name = shift;
#	print "Hi $name";
#	if(@name){
#		print " I've seen:@name\n "
#	}
#	else{
#		print " You are the first one here!\n "
#	}
#	push @name ,$name;
#}
#
#greet("Fred");
#greet("Barney");
#greet("willwa");

#my @line = qw/aa bb cc/;
#print @line;
#print "@line";


#my @items =qw/wilma dino fred/;
#my $formart ="The items are:\n".("%10s\n" x @items);
#printf $formart,@items;

#my @items =qw/wilma dino fred/;
#printf "The items are:\n".("%10s\n" x @items),@items;

#print reverse <>; 

#print "1234567890" x 7,"12345\n";

#chomp(my $num =<STDIN>);
#chomp(my @line =<STDIN>);
#foreach (@line){
#	printf "%*s\n",$num,$_;
#}

#---------------------------------
#my %last_name=(
#	fred => 'flintstone',
#	dio => 'undef',
#	barney => 'rubble',
#	berry => 'rubble',
#);
#
##while (( my $key, my $value)=each %last_name){
##	print "$key => $value\n";
##}
#
#foreach my $key (sort keys %last_name){
#	print "$key => $last_name{$key}\n";
#}

#---------------------------------
#print "$ENV{PATH}";

#---------------------------------

#my %name =(
#	fred => 'flintstone',
#	barney => 'rubble',
#	wilma => 'flintstone',
#);

#----------------------------------

#my %name =qw/
#	fred flintstone
#	barney rubble
#	wilma flintstone
#/;
#
#print "����������:";
#chomp(my $name =<STDIN>); #chompȥ��<STDIN>��\n
#print "������$name�����������$name{$name}\n"; #��һ��nameָ��ϣ��name �ڶ���nameָ����$name

#---------------------------------

#my(@words, %count, $word);
#chomp(@words=<STDIN>);
#
#foreach $word (@words){  # ��ϣ%count�� ֵcount{$word} �ʼ����undef ��Ҫ+1�� �Զ���Ϊ0 
#	$count{$word}+=1;
#}
#
#foreach $word (sort (keys %count)){
#	print "$word ���ִ�����:$count{$word}\n";
#}


#------------------------------------

#my $lengthest = 0;
#
##�ó�������key����ַ�
#foreach my $keys ( keys %ENV ){
#	my $key_length = length($keys);
#	$lengthest = $key_length if $key_length > $lengthest;
#}
#
##����ENV ����ַ���Ϊ��ʽ���ַ����� 
#foreach my $keys( keys %ENV){
#	printf "%-${lengthest}s => %s\n" ,$keys, $ENV{$keys};
#	

#}

#--------------------------------------

#while (<STDIN>){
#	chomp;
#	if (/fred/){ #ƥ��fred
#		print "\tMatches\n";
#	}
#	else{
#		print "\tDoesn't match\n";
#	}
#}
#
#while (<STDIN>){
#	chomp;
#	if (/ARGV[0]/){ #���ݵ�һ��������ƥ��
#		print "\tMatches\n";
#	}
#	else{
#		print "\tDoesn't match\n";
#	}
#}

#.��\N��ʾƥ������з�֮������ⵥ���ַ�
#$_ = "yabba dabba doo!";
#if(/doo./){  
#	print "\tMatch\n";
#}
#else{
#	print "\tDoesn't match\n";
#	}

#b{2}��ʾƥ��b����2��  ����bb	
#$_ = "yabba dabbna doo!";
#if(/ab{2}a/){  
#	print "\tMatch\n";
#}
#else{
#	print "\tDoesn't match\n";
#	}

#(.)\1 ƥ��������������ͬ�����ַ�
#$_ = "yabba da1a doafo!";
#if(/a(.)\1a/){ 
#	print "\tMatch\n";
#}
#else{
#	print "\tDoesn't match\n";
#	}

#\g{-1} ���� \-1 ����������һ������
#$_ = "xax11bb";
#if(/(.)(.)\g{-1}11/){ 
#	print "\tMatch\n";
#}
#else{
#	print "\tDoesn't match\n";
#	}


# |��ʾ�� Ҫô��� Ҫô�ұ� ( |\t)+ ��ʾҪô1��������ո� Ҫô1�������\t
#$_ = "aa";
#if(/( |\t)+aa/){ 
#	print "\tMatch\n";
#}
#else{
#	print "\tDoesn't match\n";
#	}

# \Z�ַ�����β if�жϿ�����print ��ʹ��
#while (<STDIN>){
#	print "$_\n" if /\.png\Z/;
#}


#open FILE, "/root/test.txt";
#
#while (<FILE>){
#    chomp;
#	if (/(\S)\1/){
#		print "$_\n";
#	}
#}
