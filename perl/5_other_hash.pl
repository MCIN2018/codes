#!/usr/bin/perl -w

open(NAMES,"emp.names") || die "The file doesn't exist: $!\n";

while (<NAMES>)
{
    ($num,$name)=split (' ', $_, 2);
    $realid{$num}=$name;
}
close NAMES;

foreach $keys(keys (%realid) )
{
    print " $keys: $realid{$keys}";
}

print "****ENV hash ***\n";

foreach $key(keys (%ENV))
{
    print "$key ---->  $ENV{$key} \n";
}

print "****INC hash ***\n";

foreach $keys(keys (%INC))
{
    print "$keys ---->  $INC{$keys} \n";
}
