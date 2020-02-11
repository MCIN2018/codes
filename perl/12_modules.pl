#!/usr/bin/perl


unshift(@INC, "/Users/mc/codes/perl/mylib");
require "average.pl";
print "Enter your midterm scores.\n";
@scores=split(' ', <STDIN>);
printf "The average is %.1f.\n", average::ave(@scores);
# The ave subroutine is found in a file called average.pl

use English;
print "The pid is $PROCESS_ID.\n";
print "The pid is $PID.\n";
print "The real uid $REAL_USER_ID.\n";
print "This version of perl is $PERL_VERSION.\n";
