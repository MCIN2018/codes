#! /usr/bin/perl -w

#use strict "refs";
$anmial="dog";
$dog="Lady";

print "your anmial is ${$anmial}\n";

eval "\$$anmial='Ken';";

print "why don't you call it ${$anmial}?\n";

print "----------------\n\n";

$num=5;
$p = \$num;

print 'The address asigned $p is ', $p,"\n";
print " The Value stored at this address is $$p \n";

print "--------13.4--------\n\n";

@toys=qw(Barbie Elmo ZThomas Barney );

$num=@toys;
%games=("Nintendo" => "Wii",
         "SOny"     => "PlayStation 3",
         "microsoft" => "Xbox 360",
);
$ref1=\$num;
$ref2=\@toys;
$ref3=\%games;

print "There are $$ref1 toys.\n";
print "THey are : ",join(",",@$ref2),"\n";
print "Jessica's favourite toy is $ref2->[0].\n";

while (($key,$value)=each(%$ref3))
{
    print "$key => $value\n";
}

print "They waited in line for a $ref3->{'Nintendo'}\n";




