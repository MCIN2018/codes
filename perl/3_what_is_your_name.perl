#!/usr/bin/perl

print "What's your name?\n";
chomp($name=<STDIN>);
print "Welcome,$name.Are you ready now?\n";
chomp($response=<STDIN>);
$response=lc($response);
if ($response eq "yes" or $response eq "y" )
{
print "Great!\n";
}
else
{
print "Sorry to hear, but ok.\n";
}
$now=localtime;
print "$name, you run this script at $now.\n";
