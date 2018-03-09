#!/usr/bin/perl
$now=`date`;
print "The date is: $now\n";
$var="net";
print "${var}work\n";
print "${var}" . "work","\n";


print "********* define function *************\n";
#define function
$name="MC";

print "OK\n" if defined $name;


print "****** Array ****************\n";
#array

@graps=(1,2,3,4,5,6);
print "The array is @graps \n";
print "The number of the array is: $#graps \n";

$#graps=3; # truncated the array

print "The array is @graps \n";

print "*********** array slice ***********\n";

#array slice

@friends=('Chris','Danny','Neil','William','Joe');
print " the array friends is: @friends\n";
@enmy=@friends[1,2,3];
print "the new sliced array enmy is: @enmy\n";

($pal[0],$pal[1],$pal[2])=@friends;
print " the new array pal is:@pal \n";


print "*********** array slice #2 ***********\n";

@colors=('green','yellow','red','blue');

($c[1],$c[3],$c[5],$c[6])=@colors;

print @colors,"\n"; # print the color, but not seperate the emelments quoted .
print "@colors \n"; # seperated.

print "-------\n";
print "$c[0]\n";
print "$c[1]\n";
print "$c[3]\n";
print "$c[4]\n";
print "$c[5]\n";
print "$c[6]\n";
print "$c[7]\n";
print "$c[8]\n";
print "--------\n";

print "The number of \@c is :", $#c + 1,".\n";

=pod
print "********** STDIN *********\n";

print " What\'s your name?\n";

$name = <STDIN>;

print " My name is $name \n";

print " what your teacher\'s name?\n";

$tname=<>; # the default of stdin

print " His name is $tname \n";

print "\n\n*************chop or chomp?\n";

print "---chop----\n";
print " what is your name?\n";
$m_name=<STDIN>;
chop($m_name);

print " My name is $m_name\n";
chop($m_name);
print " My name is $m_name\n";
print "-----chomp----\n";
print " what is your name?\n";
chomp($m2_name=<STDIN>);
print " My name is $m2_name\n";
chomp($m2_name);
print " My name is $m2_name\n";

print "\n\n******* STDIN for array:\n";

print "Tell me everything about yourself.\n";
@all=<STDIN>;

print "the message has: ", $#all+1 ,"\n";

print "the first is $all[0] \n";

=cut

print "******exists for array *******\n";

@names=('Chris', 'Lynn' ,'Joanna');

print " Hello $names[0]\n", if exists $names[0];
print " Out of range\n", if not exists $names[4];


print "******join function***********\n";

$you="You";
$are="are";
$fool="a fool";
$youareafool=join(" ",$you,$are,$fool);
print "$youareafool \n";

print "\n**** join to sort an array for a new one.***********\n";

@array_123=("Spring","Summer","Autumn","winter");
@array_sorted=join("\n",sort(@array_123));
$count_123=@array_123;
print "the original array is:@array_123\n";
print " the number of elements in the array is : $count_123 \n";
print "The sorted array is: @array_sorted \n";

print "\n********Map,as a magic!***************\n";

print "\n *** map {BLOCK} list ****\n";
open(FH,"datebook.master") or die;
@array_132=<FH>;
print "The original array is: @array_132\n";

@array_after_map= map {split(":")} @array_132;
print "The mapped array: @array_after_map\n";

foreach $array_after_map(@array_after_map)
{
    print "$array_after_map";
}

foreach $array_after_map(@array_after_map)
{
    print $array_after_map,"\n";
}

print "\n *****  map expr,list *******\n";

@array_152=(2,4,6,8,10);
#7 13 19 25 31
@array_maped_152= map $_ * 3 + 1 , @array_152;
print " the mapped list is: @array_maped_152\n";
















