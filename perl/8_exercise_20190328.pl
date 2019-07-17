#!/usr/bin/perl -w

=pod
Tommy Savage:408-724-0140:1222 Oxbow Court, Sunnyvale,CA 94087:5/19/66:34200
Lesle Kerstin:408-456-1234:4 Harvard Square, Boston, MA 02133:4/22/62:52600
Jon DeLoach:408-“253-3122:123 Park St., San Jose, CA 94086:7/25/53:85100
Ephram Hardy:293-259-5395:235 Carlton Lane, Joliet, IL 73858:8/12/20:56700
Betty Boop:245-836-8357:635 Cutesy Lane, Hollywood, CA 91464:6/23/23:14500
William Kopf:846-836-2837:6937 Ware Road, Milton, PA 93756:9/21/46:43500
Norma Corder:397-857-2735:74 Pine Street, Dearborn, MI 23874:3/28/45:245700
James Ikeda:834-938â-8376:23445 Aster Ave., Allentown, NJ 83745:12/1/38:45000
Lori Gortz:327-832-5728:3465 Mirlo Street, Peabody, MA 34756:10/2/65:35200
Barbara Kerz:385â-573-8326:832 Ponce Drive, Gary, IN 83756:12/15/46:268500
=cut

print "**__" x10, "#1.    Print all lines containing the pattern Street.\n";

while (<DATA>)
{
#1.    Print all lines containing the pattern Street.
    
    print if /Street/;

#2.    Print lines where the first name matches a B or b.
    @a_2=split(" ", $_);
    print  " first name contians b/B ", $_ ,"\n" if $a_2[0] =~ /b/i;
    
#3.    Print last names that match Ker.
    print  "Last name contains Ker: ",$_ ,"\n" if $a_2[1] =~ /Ker/;
    
#4.    Print phone numbers in the 408 area code.
    @a_3=split(":", $_);
    print  "#4------",$_ ,"\n" if $a_3[1] =~ /^408/;
    
#5.    Print Lori Gortz's name and address.
    
#6.    Print Ephram's name in capital letters.
    
    print  "#6------",$a_2[0] =~ tr/a-z/A-Z/ ,"\n" if $a_2[0] =~ /Ephram/;
#7.    Print lines that do not contain a 4.
#8.    Change William's name to Siegfried.
#9.    Print Tommy Savage's birthday.
#10.    Print the names of those making over $40,000.
#11.    Print the names and birthdays of those people born in June.
#12.    Print the zip code for Massachusetts.

}
__DATA__
Tommy Savage:408-724-0140:1222 Oxbow Court, Sunnyvale,CA 94087:5/19/66:34200
Lesle Kerstin:408-456-1234:4 Harvard Square, Boston, MA 02133:4/22/62:52600
Jon DeLoach:408-253-3122:123 Park St., San Jose, CA 94086:7/25/53:85100
Ephram Hardy:293-259-5395:235 Carlton Lane, Joliet, IL 73858:8/12/20:56700
Betty Boop:245-836-8357:635 Cutesy Lane, Hollywood, CA 91464:6/23/23:14500
William Kopf:846-836-2837:6937 Ware Road, Milton, PA 93756:9/21/46:43500
Norma Corder:397-857-2735:74 Pine Street, Dearborn, MI 23874:3/28/45:245700
James Ikeda:834-938-8376:23445 Aster Ave., Allentown, NJ 83745:12/1/38:45000
Lori Gortz:327-832-5728:3465 Mirlo Street, Peabody, MA 34756:10/2/65:35200
Barbara Kerz:385-573-8326:832 Ponce Drive, Gary, IN 83756:12/15/46:268500
