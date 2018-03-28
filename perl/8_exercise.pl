#!/usr/bin/perl -w

=pod
Tommy Savage:408â€“724â€“0140:1222 Oxbow Court, Sunnyvale,CA 94087:5/19/66:34200
Lesle Kerstin:408â€“456â€“1234:4 Harvard Square, Boston, MA 02133:4/22/62:52600
JonDeLoach:408â€“253â€“3122:123 Park St., San Jose, CA 94086:7/25/53:85100
Ephram Hardy:293â€“259â€“5395:235 Carlton Lane, Joliet, IL 73858:8/12/20:56700
Betty Boop:245â€“836â€“8357:635 Cutesy Lane, Hollywood, CA 91464:6/23/23:14500
William Kopf:846â€“836â€“2837:6937 Ware Road, Milton, PA 93756:9/21/46:43500
Norma Corder:397â€“857â€“2735:74 Pine Street, Dearborn, MI 23874:3/28/45:245700
James Ikeda:834â€“938â€“8376:23445 Aster Ave., Allentown, NJ 83745:12/1/38:45000
Lori Gortz:327â€“832â€“5728:3465 Mirlo Street, Peabody, MA 34756:10/2/65:35200
Barbara Kerz:385â€“573â€“8326:832 Ponce Drive, Gary, IN 83756:12/15/46:268500
=cut

open(DATA_8_e,"data_8e") || die " the file doesn't exist.";
@a_17=<DATA_8_e>;
#print " The data is:\n \n @a_17\n ************\n\n";

#1.    Print all lines containing the pattern Street.
foreach (@a_17)
{
    print if /Street/;
}
print "*" x 30 ,"\n\n";

#2.    Print lines where the first name matches a B or b.

foreach (@a_17)
{
    chomp ($_);
    @a_31=split(":",$_);
    print $_,"\n" if $a_31[0]=~/b/i;
}
print "*" x 30 ,"\n\n";

#3.    Print last names that match Ker.
foreach (@a_17)
{
    chomp ($_);
    @a_41=split(":",$_);
    print $_,"\n" if $a_41[0]=~/ Ker/; # Perfect!
}
print "*" x 30 ,"\n\n";

#4.    Print phone numbers in the 408 area code.

foreach (@a_17)
{
    print $_,"\n" if /[a-z]:408/;
}
print "*" x 30 ,"\n\n";

#5.    Print Lori Gortz's name and address.
print "5.    Print Lori Gortz's name and address.\n";
foreach (@a_17)
{
    chomp ($_);
    @a_59=split(":",$_);
    print " name  is $a_59[0],  ","Address is  $a_59[2]","\n" if $a_59[0]=~/Lori Gortz/;
}
print "*" x 30 ,"\n\n";


#6.    Print Ephram's name in capital letters.
print "6.    Print Ephram's name in capital letters.\n";
foreach (@a_17)
{
    chomp ($_);
    @a_70=split(":",$_);
    print uc($a_70[0]),"\n" if $a_70[0]=~/Ephram/;
}

print "*" x 30 ,"\n\n";

#7.    Print lines that do not contain a 4.

print "#7.    Print lines that do not contain a 4.\n";
foreach (@a_17)
{
    print $_ if $_ !~ /4/;
}
print "*" x 30 ,"\n\n";

#8.    Change William's name to Siegfried.
print "#8.    Change William's name to Siegfried.\n";
foreach (@a_17)
{
    $_ =~ s/William/Siegfried/;
    print;
    print "\n";
}
print "*" x 30 ,"\n\n";

#9.    Print Tommy Savage's birthday.
print "#9.    Print Tommy Savage's birthday.\n";
foreach (@a_17)
{
    chomp ($_);
    @a_99=split(":",$_);
    print $a_99[3],"\n" if $a_99[0]=~/Tommy Savage/;
}
print "*" x 30 ,"\n\n";
#10.    Print the names of those making over $40,000.

print "*" x 30 ,"\n\n";
#11.    Print the names and birthdays of those people born in June.
print "*" x 30 ,"\n\n";
#12.    Print the zip code for Massachusetts.
print "*" x 30 ,"\n\n";
