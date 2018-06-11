#!/usr/bin/perl -w
$_=qq/The baby says, "Mama, Mama, I can say Papa!"\n/;

print if s/(ma|pa)+/goo/gi;

print "\n   ";
$fruit="apples pears peaches plums";
$fruit =~ /(.*)/;
print $1,"\n";

# turn off the Capturing
$_="Tom Savage and Dan Savage are brothers.\n";
print if /(?:[a-z]*|T[a-z]*) Savage/;

print $1,"\n"; # nothing will be printed.


use utf8;   
$chr=11;
print "$chr is a digit.\n"if $chr =~ /\p{IsDigit}/;
$chr = "junk";
print "$chr is not a digit.\n"if $chr =~ /\P{IsDigit}/;
print "$chr is not a control character.\n"if $chr =~ /\P{IsCntrl}/;
