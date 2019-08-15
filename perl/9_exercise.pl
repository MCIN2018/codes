#! /usr/bin/perl -w
use warnings;

# 1: Print the city and state where Norma lives.

print "\n# 1: Print the city and state where Norma lives.\n";
open (DATA_9,"data_9e") || die " the file doesn't exist\n";
@array_9=<DATA_9>;

print "\n#########  1: Print the city and state where Norma lives.\n";
foreach (@array_9)
{
    print $_ if /Norma Corder/;
}

#2 Give everyone a $250.00 raise.

print "\n########### 2: Give everyone a \$250.00 raise.\n";

foreach (@array_9)
{
    #$_=~ s/(.*):([0-9].*)/$1:.($2+1)./e; # failed to try do math in RE
    $_=~ /(.*):([0-9].*)/;
    #  print "$2-";
    $raised=$2 + 250;
    # print "$raised\n";
    $_=~ s/(.*):([0-9].*)/$1:$raised/;
    print;
}


###3:3.    Calculate Lori's age.
print "\n######3.    Calculate Lori's age.\n";

foreach (@array_9)
{
    if ($_=~/Lori/)
    {
        $_=~ /(.*):(.*):(.*)/;
        # print $2;
        $Lori_birth=$2;
        $Lori_birth=~/(.*)\/(.*)\/(.*)/;
        ($month,$day,$year)=($1,$2,$3);
        $year= "19".$year;
        print "Lord was borin in $month, $day, $year.\n";
        #   print "Today is day ", (localtime)[7], " of the current year.\n";
        ($day_n, $month_n, $year_n) = (localtime)[3,4,5];
        printf("Today is %02d %02d %04d\n", $month_n+1, $day_n,$year_n+1900);
        $age=$year_n+1900-$year;
        if ($month_n > $month) #if his birthday has passed this year.
        {
        print "Lori is $age years old now.\n";
        }
        else #if his birthday hasn't arrived
        {
             $age=$age-1;
             print "Lori is $age years old now.\n";
        }
    }
    # Lori Gortz:327:832:5728:3465 Mirlo Street,Peabody,MA 34756:10/2/65:35200
    
}
###4.    Print lines 2 through 6. (The $. variable holds the current line number.)
print "\n###4.    Print lines 2 through 6\n";
system ( " sed -n '2,6{=;p;}' data_9e|sed 'N;s/\\n/:/' ");

###5.    Print names and phone numbers of those in the 408 area code.
print "\n###5.    Print names and phone numbers of those in the 408 area code\n";
#Tommy Savage:408:724:0140:1222O xbow Court,Sunnyvale,CA 94087:5/19/66:34200
foreach (@array_9)
{
    if ( $_ =~ /^([A-Z][a-z].*) [A-Z][a-z].*:408:(.*?):(.*?)/ )
    {
        print "Name: $1. ";
        print "Phone: $2";
        print "\n   ";
    }
  
}

###6.    Print names and salaries in lines 3, 4, and 5.
print "\n###6.    Print names and salaries in lines 3, 4, and 5.\n";

foreach $nu (2,3,4)
{
    $array_9[$nu] =~/^([A-Z][a-z].* [A-Z][a-z].*?):[0-9][0-9].*:(.*)$/;
    print "Line $nu - Name:$1  -   Salaey:$2 \n";
}

###7.    Print a row of stars after line 3.
print "\n###7.    Print a row of stars after line 3.\n";

$count_array_9=@array_9;

foreach $nu ( 1 .. $count_array_9 ) # nu is the line number of the arrary element.
{
    $line_nu=$nu - 1;               #line_nu is the label of the element, which is one less than the line number
    chomp ($array_9[$line_nu]);
    if ( $nu == 3 )
    {
        print " Line $nu: $array_9[$line_nu]\n";
        print "*" x 90 ,"\n";
    }
    else
    {
    print " Line $nu: ", $array_9[$line_nu],"\n";
    }
}
###8.    Change CA to California.

print "\n###8.    Change CA to California.\n";

foreach (@array_9)
{
    print $_,"\n" if /,CA/;
    s/,CA /,California/g;
    print $_,"\n";
}
###9.    Print the file with a row of stars after the last line.
print "\n ###9.    Print the file with a row of stars after the last line.\n";
foreach (@array_9)
{
    print $_,"\n";
}
print "*" x 80, "\n";
###10.    Print the names of the people born in March.
print "\n ###10.    Print the names of the people born in March.\n";
#Norma Corder:397:857:2735:74 Pine Street,Dearborn,MI 23874:3/28/45:245950
foreach (@array_9)
{
    /^([A-Za-z].* [A-Z].*?):[0-9][0-9].*:([0-9][0-9]?)\/??\/??\/.*/; # to get the month value and save it in $1.

    
    $month_10=$2;
    if ( $2 eq "03")
    {
        $month_10=3;
    }
    
    if ($month_10 == 3)
    {
        print "The Guys who was born in March:\n";
        print "Name: $1,Month: $2,\n";
    }
}
###11.    Print all lines that don't contain Karen.
print "\n ###11.    Print all lines that don't contain Karen(Tommy).\n";

# No Karen, I use Tommy instead.
foreach (@array_9)
{
    print $_,"\n" if not /^\bTommy\b/;
}


###12.    Print lines that end in exactly five consecutive digits.
print "\n ###12.    Print lines that end in exactly five consecutive digits.\n";
foreach (@array_9)
{
    print $_,"\n" if  /\D[0-9]{5}$/;
}
###13.    Print the file with the first and last names reversed.
print "\n ###13.    Print the file with the first and last names reversed.\n";
foreach (@array_9)
{
    s/([A-Za-z][A-Za-z].*?) ([A-Za-z][A-Za-z].*?)(:.*)/$2 $1$3/;
    print "$_\n";
}
