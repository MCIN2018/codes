#!/usr/bin/perl -w
#Assign the contents of the datebook.master file to an array.

open (DATEBOOK,"datebook.master") or die ;
@array_6=<DATEBOOK>;
print "the array is:\n******************\n @array_6 \n";
print "********************\n";

=pod
 Sir Lancelot:837-835-8257:474 Camelot Boulevard, Bath, WY 28356:5/13/69:24500
 Tommy Savage:408-724-0140:1222 Oxbow Court, Sunnyvale, CA 94087:5/19/66:34200
 Yukio Takeshida:387-827-1095:13 Uno Lane, Asheville, NC 23556:7/1/29:57000
 Tommy Savage:134-666-8769:93 Xinyuan,Streer,BJ:wq!
 vinh Mei:13456454
 Vinh Tranh:438-910-7449:8235 Maple Street, Wilmington, VT 29085:9/23/63:68900
=cut


#Ask the user for the name of a person to find. Use the built-in grep function to find the elements of the array that #contain the person and number of times that person is found in the array. The search will ignore case.

=pod
print "Which name do you want to find? \n";
chomp($search_name=<STDIN>);
@array_grep=grep(/$search_name/i,@array_6);
print "We find ",$#array_grep +1 ," for $search_name, they are:\n @array_grep \n\n";

#Use the split function to get the current phone number.
foreach(@array_grep)
{
    ($name,$phone)=split(':',$_);
    print "$name,$phone \n";
}
=cut
=pod
 Use the splice function to replace the current phone number with the new phone number, or use any of the other built-in array functions to produce output that resembles the following:
 
 Who are you searching for? Karen
 What is the new phone number for Karen? 530-222-1255
 Karen's phone number is currently 284-758-2857.
 
 Here is the line showing the new phone number:
 Karen Evich:530-222-1255:23 Edgecliff Place, Lincoln, NB 92086:7/25/53:85100
 
 Karen was found in the array three times.
=cut

print "Who are you searching for?\n";
chomp($new_search=<STDIN>);
print " What is the new phone number for Karen?\n";
chomp($phone=<STDIN>);

@array_splice=grep(/$new_search/i,@array_6);

=pod
foreach(@array_splice)
{
    ($name,$phone)=split(':',$_);
    print "$name,$phone \n";
}
=cut

($name,$phone_old)=split(':',$array_splice[1]);
print "$name phone number is currentl: $phone_old \n";

@array_splice_new=splice(@array_splice,1,1,"23333");
#@array_replace=splice(@names,1,2,"Ellie","Beatrice","Charles");
print "_________@array_splice\n";

#print "$name NEW info is  $array_splice_new[1] \n";







