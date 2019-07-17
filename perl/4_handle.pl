#!/usr/bin/perl -w

print "This file is",__FILE__,"and we are on line number:",__LINE__,"\n";
print "\t\tThe \Unumber\E \LIS\E ",0777,".\n";

# exercise 1: "Ouch," cried Mrs. O'Neil, "You musn't do that Mr. O'Neil!"
print "*** exercise 1: \n";
print '"Ouch," cried Mrs. O\'Neil, "You musn\'t do that Mr. O\'Neil!"',"\n";

# exercise 3: Use the printf function to print the number $34.6666666 as $34.67.
print "\n ****  exercise 2: \n";
printf " The number with two demical places for fractional part of 36.6666666 is %9.2f\n",36.666666;

print "\n *** exercise 3 \n";

$now=localtime();
print " Today is $now  \n";
print " The name of this program is ", __FILE__,"\n";

print <<EOF;
Life is good with perl
I have just complete my second exercise!
EOF

##### 20190322
print <<'MC';
Life is not really good with perl
I have to find other funs.
MC

