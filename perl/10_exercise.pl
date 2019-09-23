#!/usr/bin/perl -w

print "**************\nExercise A- PART ONE:\n**************\n";

open(FIL,"DATA_5") || die "Cannot open the file: $! \n";
open(TARG,"+>DATA_10") || die "Cannot open the file: $! \n";
while ( $line=<FIL>)
{
    $line =~ /(.*):(.*):(.*):(.*):(.*)/; #
    $name=$1;
    @templ= split (' ',$3);  # to split the string and to save it as an array.
    my $salary = $templ[0];
    #print  "\n------- The salary is: $salary-----"
    if ( $salary > 500)
    {
        print "Congratulations $name. Your salary is higher than 500: $salary \n";
        print  TARG $name; # to print the line to the target file.
        print TARG "\n";
    }
}

#close (FIL);
close (TARG);
print " \n**************\n\n  Exercise A- PART TWO: .  \n  Ask the user to input data for a new entry in the datebook file. (The name, phone, address, etc., will be stored in separate scalars.) Append the newline to the datebook file by using a user-defined filehandle. \n**************\n\n";

system "cat DATA_5>datafile";
system "cat datafile";
#Fred Fardbarkle:674-843-1385:20 Park Lane, Duluth, MN 23850:4/12/23:78900
print "Please input the name:\n";
chomp($A2_name=<STDIN>);
print "Please input phone number in form like:756-573-838:\n";
chomp($A2_phone=<STDIN>);
print "Please input the salary:\n";
chomp($A2_salary=<STDIN>);

open (DATAFILE,"+<datafile") || die "Cannot open the file:$!\n";

seek (DATAFILE,0,2); # find the end. to append to the end.
print DATAFILE "$A2_name:$A2_phone:$A2_salary\n";
close DATAFILE;

#tried to use seek , but failed, because : Filehandle FIL opened only for input at ./10_exercise.pl line 43, <FIL> line 5.
#seek (FIL,0,2);
#print FIL "$A2_name:$A2_phone:$A2_salary\n";

#############
print "\n**************\n\nExercise B 1:Sort the datebook file by names, using a pipe.\n**************\n\n";

open (DE, "|sort");
open (DATAFILE,"datafile")|| die "Cannot open the file:$!\n";
while (<DATAFILE>)
{
    print DE
}
close DE;
close DATAFILE;

#######

print "\n**************\n\nExercise B 2 & 3 :list all files in the current directory.\ntest if any of the files listed have been modified in the last 12 hours\n**************\n\n";

open (FILHAN,"ls|") || die "Cannot open the file:$!\n";

@myfile=<FILHAN>;

foreach $myfile(@myfile)
{
    #print $myfile;
    chomp($myfile);
    if (-T $myfile)
    {
        print $myfile;
        print "\n";
    }
    #   print "$myfile was modified in 12 hours.\n" if -M <= 12;
     my $lmtimedate = (stat $myfile)[9];
     my $now = time();
     my $howLongAgo = $now - $lmtimedate; #Since epoch time is just a number of seconds, it's easy to calculate short distances in time. 60*60 = 1 hour * 12 = 12 hours.
    
    if ($howLongAgo <= (60*60*12))
    {
        print "$myfile was edited less than 12 hours ago.\n";
    }
}
close FILHAN;
























