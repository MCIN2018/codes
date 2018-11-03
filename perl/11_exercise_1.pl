#!/usr/bin/perl -w

print "Please input the miles you have travled:\n";

chomp(my $mil=<STDIN>);


print "Please input the gas you have used:\n";

chomp(my $gas=<STDIN>);

print "You have traveled $mil km and used $gas gallons.\n";

sub trigger
{
    my ($x,$y)=@_;
    $x / $y;
    #print $x / $y, "\n";
}

my $fin = &trigger($mil,$gas);

print " Your mileage  is : $fin (miles per gallon). \n";


##########
%hotels=("Pillowmint Lodge" => "5",
        "Buxton Suites" => "5",
        "The Middletonian" => "3",
        "Notchbelow" => "4",
        "Rancho El Cheapo" => "1",
        "Pile Inn" => "2",
    );

foreach $key(sort(keys %hotels))
{
    print "----$key,$hotels{$key}.\n";
}
