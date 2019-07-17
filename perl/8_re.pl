#!/usr/bin/perl -w

$x = 5;
print $x if $x == 5;
print "\n";

$_="xabcdef\n";
print if /bc/;

$_ = "I lost my gloves in the clover.";

print "Found love in my gloves.\n" if /love/;


#### unless
$x_26=7;
print $x_26 unless $x_26 == 6;
print "\n";

$x=5;
print $x unless $x == 6;

### while
#print "\n","-" x 35,"\n";
$x=1;
print $x++,"\n" while $x<=5;


#foreach:
@a=('a' .. 'z');
#@a=(a .. z);
print foreach(@a);
print "\n";


# i： case sensitive/insensitive
$_="I lost my glovers in the clover, Love.";
@list=/love/gi;
print "@list,\n";

# $&,$`,$'
$_="San Francisco to Hong Kong LALALALALA\nhahaha\n";

/San Francisco/;
print $&,"\n";  #San Francisco
/to/;
print $`,"\n"; # San Francisco
/to\s/;   # s represents a space
print $',"\n"; #Hong Kong LALALALALA\nhahaha

# x modifier

$_=" Bei Jing to Tai Bei";
/Jing # commentshahahahhaha
/x;
print "comments are removed and \$& is $& \n";
#=== output Jing

#### 2
#print "-",x 30,"\n";

$_=5000;
s/$_/$& * 2/eg;
print ;
$_="knock at heaven's door.\n";
s/knock/"$&," x 2 . "$&ing"/ei;
print "He is $_ \n";


print "-" x 30 , "\n";

#####  the pattern binding operation  ####

$name="Tommy Tuttle";

print "$name\n" if $name=~/Tom/;

print "$name\n" if $name !~ /Mom/;

print "$name\n" if $name=~s/T/M/;


#print "Hehe.\n" if <STDIN>=~/Tuttle/;

#####
$salary=5000;
$salary =~ s/$salary/$& * 1.1/e;
print "\$& is $& \n ";  # $& is 5000
print "salary is $salary\n"; # salary is 5500


print "-" x 30 , "\n";

############
open (DATA_837,"data_8.37") || die " the file doesn't exist\n";
@array_96=<DATA_837>;

foreach (@array_96)
{
    chomp($_);
    @line=split (":",$_);
    print $line[0]," ",$line[1],"\n"     if $line[1] =~ /303/;
}

print "-" x 30 , "\n";
############
=pod
while (<DATA>)
{
    s/6/6 * 7.3 /ge;
    print;
}
__DATA__
Steve Blenheim   5
Betty Boop       4
Igor Chevsky     6
Norma Cord       1
Jon DeLoach      3
Karen Evich      66


while (<DATA>)
{
    #  print if m#Norma#;
    print if m{karen E};
}
$name='Jon';
$_=qq/$name is a good sport.\n/;
#print if m'$name';
print if m"$name";
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich
=cut
print "*" x 100;
printf "\n\n";

print " -------for x modifier-----\n";

$_= "We are the hope of the world";
#@result =~ /th/;
print "Result is $&.\n" if /the    #looking for the patterns
/x;

$_ = "knock at heaven's door.\n";
s[knock]{"knock, " x 2 . "knocking"}ie;
#s/knock/"knock, " x 2 . "knocking"/ie;
print "He is $_\n";


print "*------" x 10 ,"\n";

$salary = 5000;

print $salary,"\n" if $salary=~/5/;
print "^^^^____" x 10 ,"\n";

$name="either IELTS or BEC is my tagert";
print $name ,"\n" if $name =~ tr/a-z/A-Z/;


while (<DATA>)
{
    @a_split = split(":",$_);
    print $a_split[0],"\n" if $a_split[1] =~ /408/;
}
__DATA__
Steve Blenheim:415-444-6677:12 Main St.
Betty Boop:303-223-1234:234 Ethan Ln.
Igor Chevsky:408-567-4444:3456 Mary Way
Norma Cord:555-234-5764:18880 Fiftieth St.
Jon DeLoach:201-444-6556:54 Penny Ln.
Karen Evich:306-333-7654:123 4th Ave.
