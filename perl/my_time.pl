#!/usr/bin/perl

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime;

my @aweek = qw(Sunday Monday Tuesday Wenday Thursday Friday Saturday);
my @aDayTS= qw(Not-Daytime-saving Daytimesaving);
print "今天是 ", $year +1900," 年", $mon +1," 月 $mday 号. 目前是$aDayTS[$isdst]。 \n", ;
print "Today is $aweek[$wday], is the ", $yday, "th days of this year.\n";

# to obtain the month and day:
my @abbr = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
print "Today is : $abbr[$mon] $mday";
print "\n";


# !!!!!! In scalar context, localtime returns the ctime(3) value:

print scalar localtime;
print "\n";
