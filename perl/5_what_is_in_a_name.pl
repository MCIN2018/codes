#!/usr/bin/perl
print "\n\n\n\n";
print "-" x 300;
$now=`date`;
print "The date is: $now\n";
$var="net";
print "${var}work\n";
print "${var}" . "work","\n";


print "********* define function *************\n";
#define function
$name="MC";

print "OK\n" if defined $name;


print "****** Array ****************\n";
#array

@graps=(1,2,3,4,5,6);
print "The array is @graps \n";
print "The number of the array is: $#graps \n";

$#graps=3; # truncated the array

print "The array is @graps \n";

print "*********** array slice ***********\n";

#array slice

@friends=('Chris','Danny','Neil','William','Joe');
print " the array friends is: @friends\n";
@enmy=@friends[1,2,3];
print "the new sliced array enmy is: @enmy\n";

($pal[0],$pal[1],$pal[2])=@friends;
print " the new array pal is:@pal \n";


print "*********** array slice #2 ***********\n";

@colors=('green','yellow','red','blue');

($c[1],$c[3],$c[5],$c[6])=@colors;

print @colors,"\n"; # print the color, but not seperate the emelments quoted .
print "@colors \n"; # seperated.

print "-------\n";
print "$c[0]\n";
print "$c[1]\n";
print "$c[3]\n";
print "$c[4]\n";
print "$c[5]\n";
print "$c[6]\n";
print "$c[7]\n";
print "$c[8]\n";
print "--------\n";

print "The number of \@c is :", $#c + 1,".\n";

=pod
print "********** STDIN *********\n";

print " What\'s your name?\n";

$name = <STDIN>;

print " My name is $name \n";

print " what your teacher\'s name?\n";

$tname=<>; # the default of stdin

print " His name is $tname \n";

print "\n\n*************chop or chomp?\n";

print "---chop----\n";
print " what is your name?\n";
$m_name=<STDIN>;
chop($m_name);

print " My name is $m_name\n";
chop($m_name);
print " My name is $m_name\n";
print "-----chomp----\n";
print " what is your name?\n";
chomp($m2_name=<STDIN>);
print " My name is $m2_name\n";
chomp($m2_name);
print " My name is $m2_name\n";

print "\n\n******* STDIN for array:\n";

print "Tell me everything about yourself.\n";
@all=<STDIN>;

print "the message has: ", $#all+1 ,"\n";

print "the first is $all[0] \n";

=cut

print "******exists for array *******\n";

@names=('Chris', 'Lynn' ,'Joanna');

print " Hello $names[0]\n", if exists $names[0];
print " Out of range\n", if not exists $names[4];


print "******join function***********\n";

$you="You";
$are="are";
$fool="a fool";
$youareafool=join(" ",$you,$are,$fool);
print "$youareafool \n";

print "\n**** join to sort an array for a new one.***********\n";

@array_123=("Spring","Summer","Autumn","winter");
@array_sorted=join("\n",sort(@array_123));
$count_123=@array_123;
print "the original array is:@array_123\n";
print " the number of elements in the array is : $count_123 \n";
print "The sorted array is: @array_sorted \n";

print "\n********Map,as a magic!***************\n";

print "\n *** map {BLOCK} list ****\n";
open(FH,"datebook.master") or die;
@array_132=<FH>;
print "The original array is: @array_132\n";

@array_after_map= map {split(":")} @array_132;
print "The mapped array: @array_after_map\n";

foreach $array_after_map(@array_after_map)
{
    print "$array_after_map";
}

foreach $array_after_map(@array_after_map)
{
    print $array_after_map,"\n";
}

print "\n *****  map expr,list *******\n";

@array_152=(2,4,6,8,10);
#7 13 19 25 31
@array_maped_152= map $_ * 3 + 1 , @array_152;
print " the mapped list is: @array_maped_152\n";

print "\n\n ***** pop,push,shift,splice,split ********\n";

print "------------pop\n";
@array_161=("Chinese","English","French","Burmese","Pali");
$pop_162=pop(@array_161);
print "The string of pop for array_161 is: $pop_162 .\n";
print "Array_161 after poped becomes: @array_161 \n";

print "------------push\n";
@array_167=("Chinese","English","French","Burmese","Pali");
print "The original array is: @array_167 \n";
push(@array_167,"Japanese");
print "after pushing Japanese, the array becomes:@array_167 \n";

print "------------shift\n";
@array_172=("China","Korea","Japan","Russia");
$shift_1=shift @array_172;

print "the shifted element is $shift_1 \n";
print "The oringal becomes @array_172 \n";

print "------------splice\n";
@array_179=("Chinese","English","French","Burmese","Pali");
print "The oringal array is : @array_179 \n";

@array_splice_1=splice(@array_179);
print "Now, the array is @array_179 \n";
print "and the new array is @array_splice_1 \n";

@array_186=("Chinese","English","French","Burmese","Pali");
print "The original array is @array_186.\n";
@array_splice_2=splice(@array_186, 2, 2,"SPLICE_1","SPLICE_2"); #  offest 2-2, and the last list replace them.
print "Now, the array is @array_186. \n";
print "and the new array is @array_splice_2. \n";

print "\n----- split-----\n";
$string_193="1 2 3 4 5 6";
@array_194=split (' ',$string_193);
print "element 1 is $array_194[0]\n";
print "element 2 is $array_194[1]\n\n";


open(DATA,"DATA_5") or die;
@array_204=(<DATA>);

=pod
foreach $array_shift_2 (@array_204) {
    print "$_\n";
    #@array_split=split(":");
    # print "$array_split[0]\n";
 } I don't know why, it doesn't work!! :-(
=cut

for ($i=0; $i <= $#array_204 ; $i++) {
    # print "$array_204[$i]\n";
    @array_shift_2=split(":",$array_204[$i]);
    #print "@array_shift_2 \n";
    print " $array_shift_2[0]\n";
    
    ($name,$phone,$address)=split(":",$array_204[$i]);
    print "name- $name,phone-$phone  address-$address\n";
    
    ($name,$phone,$address)=split(":",$array_204[$i],2); # only two elements will be save. the last one will contian the rest of the string, no matter how long it is
    print "name- $name,phone-$phone  address-$address\n";
    
}

print "\n ****** sort ******\n";
@array_225=("Cat","Horse","Dog","Tiger");
print "The oringal array is @array_225 \n";
@a_226=sort(@array_225); # or sort @array_225
print "New sorted array is: @a_226.\n";
@a_229=reverse (sort @array_225);
print "the reversed sorted array is @a_229\n";

sub asc_sort
{
    $a cmp $b;
}
@a_236= sort asc_sort (@array_225);
print "array with sub sorted : @a_236 \n";
@a_238=asc_sort(@array_225);
print "The array with sub is: @a_238 \n"; # failure, don't understand.

sub numberic_sort
{
    $a <=> $b;
}

@a_246=sort numberic_sort (0.3 ,4, 29, -12, 567, 2, 456);

print "The space ship operator sorted array is: @a_246  \n";


print "\n****** unshift *******\n";

@a_253=("Hello","Ciao","Bonjour","Sault");
print "The original array is               @a_253\n";
@a_254=unshift(@a_253,"Nihao","Hola");
print "After unshift,the original array is @a_253\n";
print "The new array after unshift is:     @a_254. \n";


###### Hash, 5.5.

print "\n ***** hash keys,values,each,sort   ****\n";

%h_264=('1'=>'Mondy',
        '2'=>'Tuesday',
        '3'=>'Wensday',
        '4'=>'Thursday',
        '5'=>'Friday',
        '6'=>'Saturday',
        '7'=>'Sunday',
        );
foreach $keys( sort keys(%h_264))
{
    print "The key is: $keys\n";
}

foreach $value ( values(%h_264))
{
    print " The value is $value \n";
}

while (($key,$value)=each(%h_264))
{
    print "$key,$value \n";
}

#sort reverse

foreach $value_289(reverse sort (%h_264))
{
    print "$value_289 , $h_264{$value_289} \n";
}

sub sort_asc
{
    # $a <=> $b;
    $b <=> $a; # desc
}

foreach $keys( sort sort_asc keys(%h_264))
{
    print "The key is: $keys\n";
}

%h_305=('1'=>'1',
'Tuesday'=>'2',
'Wensday'=>'3',
'Thursday'=>'4',
'Friday'=>'5',
'Saturday'=>'6',
'Sunday'=>'7',
);
sub sort_asc_value
{
    #$hash{$a} <=> $hash{$b};
    $h_305{$a} <=> $h_305{$b};
}

foreach $keys( sort sort_asc_value keys(%h_305))
{
    print "$keys: $h_305{$keys}\n";
}


print "\n hash's delete funtion\n";

$delete_327=delete $h_305{1};
print "The delete is: $delete_327 \n";
foreach $keys( keys(%h_305))
{
    print " The rest is: $keys: $h_305{$keys}\n";
}

print "\n ----- exists  of hash ------\n";

print " exist Friday-> $h_305{Friday} \n" if exists $h_305{Friday};


=pod
if exists $h_305{Friday}
{
    print " exist Friday-> h_305{Friday} \n";
}
=cut




##### added 20190323
#read function
=pod
print "Describe your favorite food in 10 bytes or less.\n";
print "If you type less than 10 characters, press Ctrl-d on a line by itself.\n";
print "localtime is :",localtime(),"\n";
$number20190323=read(STDIN,$favourite,10);

print "\n you just typed $favourite.\n";
print "The number of bytes read was $number20190323.\n";

###### getc function
$restofit=<>; # <> store　the input buff content.
print "restofit is $restofit \n";

print "Answer Y or N \n";
$answer=getc;
print "$answer.\n";
$restofit=<>;
print "what kept in input buff is $restofit \n";
=cut

####chop chomp for array assignment
 @line=("red\n", "green", "orange");
 $chop_today=chop(@line);   # Chops the last character off each
print "chop_today is $chop_today.\n";
# string in the list
print "@line";
print "\n";
@line=( "red\n", "green\n", "orange");
$chomp_today=chomp(@line);  # Chomps the newline off each string in the list
print "@line";
print "\n";
print "chomp_today is $chomp_today.\n";


