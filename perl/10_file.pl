#! /usr/bin/perl -w


$Lock_ex=2;
$Lock_un=8;

print "Please input the name:\n";

#chomp($name=<STDIN>);

print "Please input the address:\n";

#chomp($address=<STDIN>);

open (DB,">>datafile") or die " The file doesn't exist!\n";

flock(DB,$Lock_ex) || die;

print DB "$name,$address\n";

flock (DB,$Lock_un) || die;


print "*" x 30, "\n";
#Betty Boop

open (FH,"db") || die " file db doesn't exist.\n";
foreach (<FH>)  # or $line=<FH>
{
    if ($_ =~ /Betty/)  # $line=~/Betty/
  {
      print;
  }
}
seek (FH,0,0); # back to the beginning, otherwise, the file needs to be cloed first.

while (<FH>)
{
    print if /Norma/;
}



print "*" x 30,"\n";

open(MYPIPE, "| wc -w");
print MYPIPE "apples pears peaches";
close(MYPIPE);

print "*" x 30,"\n";

open (FOO, "| tr '[a-z]' '[A-Z]' ");
print FOO "hello yuzuru\n";
close FOO;

print "*" x 30,"\n";
open (FOOO,"|sort +1 |tr 'a-z' 'A-Z' ");
open (DB,"emp.names");
while (<DB>)
{
    #print FOOO;
   system " echo $_ |sort +1 |tr 'a-z' 'A-Z' ";
}
close FOOO;




#######
print "#######################################\n";


#open (FILE1,"hellohaha") || die " I cannot open the file . $!\n" ;


#######
print "\n #######select funcction . \n";

=pod
open(FILEHANDLE,">newfile") or die "Cannot open the file: $! \n";
$oldfilehander=select(FILEHANDLE);
print  $oldfilehander, " oldfilehander is $oldfilehander \n";

open(DBFILE,"<datafile") or die "Cannot open the file: $! \n";
while (<DBFILE>)
{
    print $oldfilehander,"$_ .\n";
}
=cut

######### seek function .

print "\n #### seek function .\n ";
open (DB,"<datafile") or die "Cannot open the file: $! \n";

while ( $line=<DB>)
{
    if ($line =~ /Lori/)
    {
        print "---$line---\n";
    }
}

seek(DB,0,0);

while (<DB>)
{
    print if /Tommy/;
}

close DB;

##### tell + seek

print "\n##### tell + seek \n";
open (DB,"<db") or die "Cannot open the file: $! \n";

while ( $line=<DB>)
{
    chomp($line);
    if ($line =~ /Lori/)
    {
        $filepositon=tell;
        print "The file positon is $filepositon\n";
        print "---$line---\n";
    }
}

seek (DB,$filepositon,0);
while (<DB>)
{
    print ;
    print "\n";
}
print "\n------\n";

=pod
seek (DB,0,40);
while (<DB>)
{
    print ;
    print "\n";
}

=cut
##### read write append
 
print "-----------read write append-------\n";

# write first , read later.
open(FH, "+>file") || die;
print FH "1\n";
seek(FH,0,0);         # Go to the beginning of the file
 while(<FH>) {
        print;            # Reads from file; the line is in $_
}



##### read first, write later
open(FH, "+<file") || die "Can't open file: $!\n";
$count=<FH>;           # Read a number from from the file
print "$count\n";
$count++;
seek(FH, 0,0) || die;  # Seek back to the top of the file
print FH $count;       # Write the new number to the file
close(FH);


#### pipe
print "-----------open for pipe-------\n";
open(FOO, "| tr '[a-z]' '[A-Z]' ");
print FOO "apples pears peaches \n";
close(FOO);



#######
print "-----------open for pipe for filehandler-------\n";
$tmpfile = "temp";
open(DB, "data") || die qq/Can't open "data": $!\n/;
# Open DB for reading
open(SAVED, ">&STDOUT") || die "$!\n";  # Save stdout
open(STDOUT, ">$tmpfile" ) || die "Can't open: $!\n";
open(SORT, "| sort +1") || die;         # Open output filter
while(<DB>){
     print SORT;   # Output is first sorted and then sent to temp.
   }
close SORT;
open(STDOUT, ">&SAVED") || die "Can't open";
print "Here we are printing to the screen again.\n";
# This output will go to the screen
rename("temp","data");
