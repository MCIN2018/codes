#! /usr/bin/perl -w


$Lock_ex=2;
$Lock_un=8;

print "Please input the name:\n";

chomp($name=<STDIN>);

print "Please input the address:\n";

chomp($address=<STDIN>);

open (DB,">>datafile") or die " The file doesn't exist!\n";

flock(DB,$Lock_ex) || die;

print DB "$name,$address\n";

flock (DB,$Lock_un) || die;


print "*" x 30, "\n";
#Betty Boop

open (FH,"db") || die " file db doesn't exist.\n";
foreach (<FH>)  # or $line=<FH>
{
    if ($_ =~ /Betty/)  # $line=~/Betty/
  {
      print;
  }
}
seek (FH,0,0); # back to the beginning, otherwise, the file needs to be cloed first.

while (<FH>)
{
    print if /Norma/;
}



print "*" x 30,"\n";

open(MYPIPE, "| wc -w");
print MYPIPE "apples pears peaches";
close(MYPIPE);

print "*" x 30,"\n";

open (FOO, "| tr '[a-z]' '[A-Z]' ");
print FOO "hello yuzuru\n";
close FOO;

print "*" x 30,"\n";
open (FOOO,"|sort +1 |tr 'a-z' 'A-Z' ");
open (DB,"emp.names");
while (<DB>)
{
    #print FOOO;
   system " echo $_ |sort +1 |tr 'a-z' 'A-Z' ";
}
close FOOO;




















