#! /usr/bin/perl -w
=pod
 Tommy Savage:408:724:0140:1222O xbow Court,Sunnyvale,CA 94087:5/19/66:34200
 Lesle Kerstin:408:456:1234:4 Harvard Square,Boston,MA 02133:4/22/62:52600
 Jon DeLoach:408:253:3122:123 ParkSt.,SanJose,CA 94086:7/25/53:85100
 Ephram Hardy:293:259:5395:235 Carlton Lane,Joliet,IL 73858:8/12/20:56700
 etty Boop:245:836:8357:635 Cutesy Lane,Hollywood,CA 91464:6/23/23:14500
 Wilhelm Kopf:846:836:2837:6937 Ware Road,Milton,PA 93756:9/21/46:43500
 Norma Corder:397:857:2735:74 Pine Street,Dearborn,MI 23874:3/28/45:245700
 James Ikeda:834:938:8376:23445 Aster Ave.,Allentown,NJ 83745:12/1/38:45000
 Lori Gortz:327:832:5728:3465 Mirlo Street,Peabody,MA 34756:10/2/65:35200
 Barbara Kerz:385:573:8326:832 Ponce Drive,Gary,IN 83756:12/15/46:268500
=cut

# 1: Print the city and state where Norma lives.

open (DATA_9,"data_9e") || die " the file doesn't exist\n";
@array_9=<DATA_9>;

foreach (@array_9)
{
    print $_ if /Norma Corder/;
    
}

#Give everyone a $250.00 raise.

#Calculate Lori's age.
#    Print lines 2 through 6. (The $. variable holds the current line number.)
# 5.    Print names and phone numbers of those in the 408 area code.
#6.    Print names and salaries in lines 3, 4, and 5.
#7.    Print a row of stars after line 3.
#8.    Change CA to California.
#9.    Print the file with a row of stars after the last line.
#10.    Print the names of the people born in March.
#11.    Print all lines that don't contain Karen.
#12.    Print lines that end in exactly five consecutive digits.
#13.    Print the file with the first and last names reversed
