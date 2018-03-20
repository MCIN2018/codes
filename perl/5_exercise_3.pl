#!/usr/bin/perl -w
=pod
Write a script called elective that will contain a hash.
The keys will be code numbersâ€”2CPR2B, 1UNX1B, 3SH414, 4PL400.

The values will be course namesâ€”C Language, Intro to UNIX, Shell Programming, Perl Programming.

Sort the hash by values and print it.

Ask the user to type the code number for the course he plans to take this semester and print a line resembling the following:

You will be taking Shell Programming this semester.
=cut

%elective=( "2CPR2B"=>"C Language",
            "1UNX1B"=>"Intro to UNIX",
            "3SH414"=>"Shell Programming",
            "4PL400"=>"Perl Programming",
);
=pod
foreach $key (sort (keys(%elective)))
{
    print "$key,$elective{$key} \n";
}
=cut

sub sort_value{
    $elective{$a} cmp $elective{$b};
}

foreach $key (sort sort_value (keys(%elective)))
{
    print "$key,$elective{$key}\n";
}

print "which course do you want to choose?\n";
chomp($course=<STDIN>);

print "Good, you will take $elective{$course} this semester.\n";






