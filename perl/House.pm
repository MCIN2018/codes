#As class file in Chapter 14 OOP
package House;

=pod
 #Example 14.4
sub new{
    my $class=shift;
    my $ref={"Owner"=>undef,
        "Price"=>undef,
    };
    bless($ref,$class);
    return $ref;
}

sub set_owner{
    my $self=shift;
     print "\n---\$ref is $self is a class ",ref($self)," reference.\n";
        $self->{"Owner"}=shift;
}

sub display_owner{
    my $self=shift;
    print $self->{"Owner"},"\n";
}
1;
=cut

#Example 14.6 passing parameters to constructor functions.

=pod
sub new{
    my $class=shift;
    my ($owner,$salary)=@_;
    my $ref={"Owner"=>$owner,
        "Price"=>$salary,
    };
    #print "Before blessed,\$ref is $ref.\n ";
    bless($ref,$class);
    print "After blessed,\$ref is $ref.\n";#And the context of \$ref is ", ref($ref),".\n";
    return $ref;
}

sub display_object{
    my $self=shift;
     while (my ($key,$value)= each %$self)
    {
        print "$key: $value \n";
    }
}
1;
=cut

###Example14.7 passing parameters to instance methods.

sub new{
    my $class=shift;
    my ($owner,$salary,$style)=@_;
    my $ref={"Owner"=>$owner,
        "Price"=>$salary,
        "Style"=>$style,
    };
    bless($ref,$class);
    return $ref;
}

sub display{
    my $self=shift;
    foreach $key( @_ )
    {
        print "$key: $$self{$key}\n";
        # print "$key:$self->{$key}\n";  two ways to display.
    }
}
1;
