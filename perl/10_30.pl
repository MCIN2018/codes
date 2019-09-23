#! /usr/bin/perl -w

unless ($#ARGV==0)
{
    die "Usage: $0 <argument>:$!";
}

$padd=shift;
print "The user input is: $padd.\n";

open (PASSWD,"/etc/passwd") || die "Cannot open:$!";


while ( $line = <PASSWD>)
{
    unless ( $line =~ /$padd:/i)
    {
        die "$padd is not a user here.\n"
    }
}
close PASSWD;
