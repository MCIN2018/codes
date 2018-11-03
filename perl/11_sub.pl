#!/usr/bin/perl -w


#####################

@fruits=("Orange","Apple","Cherry");
$name="Christine";

sub fed_me
{
   print  join(",",@_),"\n";
}

&fed_me(@fruits,$name,"Ken");


###################

########## Prototypes #############
print "\n----------- Prototypes----------\n";

sub mynumbers(@$; $);

@list=(Chris,Kathy,Ken);

mynumbers(@list,60);

sub mynumbers(@$; $)
{
    my $scalar=pop(@list);
    my @arr=@_;
    print "The array is @arr \n";
    print "The scalar is $scalar \n";
}


############ context #############

print "\n----------- Context----------\n";

@now=localtime;
print "@now \n";

$now=localtime;
print "$now \n";

print localtime; print "\n";

print scalar localtime; print "\n";


