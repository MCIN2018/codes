#! /usr/bin/perl -w

#use strict "refs";
$anmial="dog";
$dog="Lady";

print "your anmial is ${$anmial}\n";

eval "\$$anmial='Ken';";

print "why don't you call it ${$anmial}?\n";

print "--------Dereferencing：--------\n\n";

$num=5;
$p = \$num;

print 'The address asigned $p is ', $p,"\n";
print " The Value stored at this address is $$p \n";

print "--------13.4 Dereferencing--------\n\n";

@toys=qw(Barbie Elmo ZThomas Barney );

$num=@toys;
print "number is $num. \n";

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


####### 13.1.3: anyonmous array

$arrayref = [ Hello, World, I, love, Figure, Skating ];
print "The value of the reference is \$arrayref \n $arrayref.\n";
print "$arrayref->[1]\n";
print "$$arrayref[1]\n";
print "${$arrayref}[1]\n";
print "@{$arrayref}\n";

###### anonymous hash

my $hashref = { "Name"=>"Woody",
                "Type"=>"Cowboy"};
print $hashref->{"Name"}, "\n";
print keys %$hashref, "\n";
print values %$hashref, "\n";

####### example 13.7: lists of list.

my $arrays_13=['1','2','3',['red','yellow','blue',]];
# three scalar elements, one refernence element.

# to print the three scalar elements:
for ($i=0;$i<3;$i++)
{
    print $$arrays_13[$i],"\n";
    #print $arrays_13->[$i],"\n"; # The same result
}
#to print the elements of the reference element.
print "\n";
print $$arrays_13[3];
print "\n";
for ($i=0;$i<3;$i++)
{
    print $$arrays_13[3]->[$i];
    print " ---  ";
    print $arrays_13->[3]->[$i],"\n";
 
}
# to print with type funny symbol.
print "\n";
print "@{$arrays_13}\n";
print "@{$arrays_13->[3]}\n";


##########
######anonymous subroutines
print "######\n";
my $subref= sub
{
    print @_ ;
    
};
&$subref('a','b','c');
print "\n";



###### 13.3 Subroutines and Passing by Reference
## passing element with address.
@toys = qw(Buzzlightyear Woody Bo);
$num  = @toys;

sub gifts
{
    my ($n,$t)=@_;
    print "There are $$n gifts\n";
    print "They are: @$t\n";
}
gifts(\$num,\@toys);

#########exmaple 13.14reference to pass arrays.

my @list1=(1 .. 100);
my @list2=(5,10,15,20);

sub addemup
{
    my($arr1,$arr2)=@_;
    my ($total);
    print $arr1,"\n";
    print $arr2,"\n";
    
    foreach $num(@$arr1,@$arr2)
    {
        $total+=$num;
    }
    return $total;
}

print "The total is:", &addemup(\@list1,\@list2),"\n";



###### filehandle reference.
#example 13.15.

open (README,"/etc/passwd") || die;

&readit(\*README);

sub readit{
    my ($passwd)=@_;
    print "passwd is $passwd.\n";
    while (<$passwd>)
    {
        #    print;
    }
}

#SEEK(README,0,0);


###### example 13.17 ref function. to test the existence of a referenc

sub gifts;     # Forward declaration
 $num = 5;
 $junk = "xxx";
 @toys = qw/Budlightyear Woody Thomas/ ;
 gifts( \$num, \@toys, $junk );
 sub gifts {
 my( $n, $t, $j) = @_;
  print "\$n is a reference.\n" if ref($n);
  print "\$t is a reference.\n" if ref($t);
  print "\$j is a not a reference.\n" if ref($j);
  printf "\$n is a reference to a %s.\n", ref($n);
  printf "\$t is a reference to an %s.\n", ref($t);
}




my $ptr={'Name'=>"John"};
print $$ptr{"Name"},"\n";
print " The second:",$ptr->{"Name"},"\n";

my $x="Christine is a fool.";
$p=\$x;
print "the content of \$x is:",$$p,"\n";

