#!/usr/bin/perl -w


#####################

@fruits=("Orange","Apple","Cherry");
$name="Christine";

sub fed_me
{
   print  join(",",@_),"\n";
}

&fed_me(@fruits,$name,"Ken");


###################

########## Prototypes #############
print "\n----------- Prototypes----------\n";

sub mynumbers(@$; $);

@list=(Chris,Kathy,Ken);

mynumbers(@list,60);

sub mynumbers(@$; $)
{
    my $scalar=pop(@list);
    my @arr=@_;
    print "The array is @arr \n";
    print "The scalar is $scalar \n";
}


############ context #############

print "\n----------- Context----------\n";

@now=localtime;
print "@now \n";

$now=localtime;
print "$now \n";

print localtime; print "\n";

print scalar localtime; print "\n";



######## wantarray ##################

print "What's your full name?\n";
chomp($fullname=(<STDIN>));
@arrayname=title($fullname);
print "Full name is : $arrayname[0],$arrayname[1].\n";

print "Your favourate book is?\n";
chomp($mybook=(<STDIN>));
$goodbook=title($mybook);
print "My Favourite book is: $goodbook\n";

sub title{
    my $text= shift;
    my $newstring;
    $text=lc($text);
    my @newtext=split(" ",$text);
    foreach my $word(@newtext)
    {
        $word=ucfirst($word);
        $newstring .= "$word ";
    }
    my @newarray=split(" ",$newstring);
    chop($newstring);
    return wantarray ? @newarray : $newstring;
}





