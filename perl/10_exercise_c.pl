#!/usr/bin/perl -w

print " \n**************\n\nExercise C of Chapter 10: to on file datebook:\n\n**************\n\n";

$filename=datebook;

print "$filename NOT exists.\n" if !-e $filename;

print "$filename is executable.\n" if -x $filename;

print "$filename is readable.\n" if -r $filename || die " Oops! ERROR found on $filename :$!\n";

# the last modification of $filename

$lastmofidy=(stat $filename)[9];
($sec,$min,$hour,$day,$month,$year)=(localtime $lastmofidy)[0,1,2,3,4,5];
printf("$filename last modified at %04d %02d %02d %02d:%02d\n", $year+1900, $month+1, $day,$hour,$min);


# part 3:

print "\n**************\n\nPart 3:\n\n**************\n\n";
open ( HAN, "<datebook") || die "$!\n";
open (RAISE, "+>raise") || die "$!\n";

%names;
$amount=1;
$total_salary=0;
$total_people=0;
while (<HAN>)
{
    $line=$.;
   ($name,$else,$salary) = /^(.*?):(.*):(.*?)$/;
    chomp($name);
   
    # The first line will be added to avoid the problem of empty hash.
    if ($amount == 1 )
    {
        $names{$name}= 1;
        $amount = $amount + 1;
        $salary= $salary + ($salary*0.1);
        print  RAISE "$name:$else:$salary\n";
        $total_salary=$total_salary+$salary;
        $total_people += 1;
    }

    # If the KEY , which is the person's name, doesn't exist, it means the person occurs the first time
    # , add it to the hash , and the value set as 1, to express this person is found for the first time.
    if (!exists $names{$name})
    {
        $names{$name}= 1;
        $salary= $salary + ($salary*0.1);
        print  RAISE "$name:$else:$salary\n";
        $total_salary=$total_salary+$salary; # for the average.
        $total_people += 1;  # for the average
    }
    else
    {
        if ( $. != 1 ) # only if it is not the first line, because the first line will be added at the begnning.
        {
          # to add the number of the appearance of each person.
            $for_acculate=$names{$name}+1;
            $names{$name}= $for_acculate;
        }
    }
    
}
$average= $total_salary / $total_people;
printf "Total Salary is:$total_salary; total pople is : $total_people\nAverage slary is: %.1f. \n", $average ;

print "-" x 20,"\n";
printf " %-22s%-10s\n","NAME","Occurences";
while(($key, $value)=each(%names)){
    printf " %-20s   %-10d \n",  $key, $value ;
}

close RAISE;
close HAN;


print "\n**************\n\nC.2:\n\n**************\n\n";

die "$0 requires arguments $!\n" if $#ARGV<0;

foreach (@ARGV)
{
    print "$_  is readable.\n" if -r $_ ;
    print "$_  is writable.\n" if -w $_ ;
    print "$_  is exactuable.\n" if -x $_ ;
}



