#!/usr/bin/perl -w

=pod
 Steve Blenheim 101
 Betty Boop 201
 Igor Chevsky 301
 Norma Cord 401
 Jonathan DeLoach 501
 Karen Evich 601
=cut

open(DATA_9,"data_9") || die " file doesn't exist.\n";

@a_5=<DATA_9>;
print "@a_5\n";

foreach (@a_5)
{
    # print if /N.r/;
    print if /an.D/;
}
print "\n";

$_="Sing a song of sixpence\nA pocket full of rye.\n";
# print if /pence.A/s ;
print $& if /pence.A/s ;
print "\n";
print if s/sixpence.A/twopence, a/s;
# output:
#pence
#A
#Sing a song of twopence, a pocket full of rye.

#character class:
print "character class\n ";
foreach (@a_5)
{
    print if /[a-zA-Z]eve/;
}
print "\n";

foreach (@a_5)
{
    print if /[a-zA-Z0-9]/;
}
print "\n";

foreach (@a_5)
{
    print if /[^123]0/;# not include 10,20 or 30
}
print "\n";


foreach (@a_5)
{
    print if /6\d\d/; # 6 and two digitals followed.
}
print "\n";

foreach (@a_5)
{
    print if /[ABC]\D/; # A ,B or C followed by a non-digital
}
print "\n";

foreach (@a_5)
{
    print if /\s\w\w\w\w\w\s\d/;  # Karen Evich 601
}
print "\n";

foreach (@a_5)
{
    print if /\W\w\w\w\w\W/;  #  four characters surrouded by two non-characters: Betty Boop 201
}
print "\n";



# turn off greediness

print "------turn off greediness------\n";

$_="abcdefghijklmnopqrstuvwxyz";
 s/[a-z]+?/XXX/;
 print $_, "\n";

print "----------------\n";




print "\n";print "\n";
print "\n";

# whitespace characters
print "Whitespace Characters\n";

foreach (@a_5)
{
    print if s/\n/\t/g;  # repleace return with tab
}
print "\n";

foreach (@a_5)
{
    print if s/\s/*/g;  #  replace all whitespace with *, including return
}
print "\n";


foreach (@a_5)
{
    print if s/\S/*/g;  #   replace all whitespace with *, not include return
}
print "\n";



