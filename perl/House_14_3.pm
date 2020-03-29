package House_14_3;
sub new{
    my $class=shift;
    my $ref={};
    print "Before blessed,\$ref is $ref.\n ";
    bless($ref,$class);
    print "After blessed,\$ref is $ref.\nAnd the context of \$ref is ", ref($ref),".\n";
    return $ref;
}

sub setdata{
    my $self=shift;
    $self->{"Name"}="Christine";
    # print "\n---In setdata subroutine,\$ref is $self.\nAnd the context of \$ref is ",ref($self),".\n";
}

sub getdata{
    my $self=shift;
    print $self->{"Name"},"\n";
    # print "\n---In getdata subroutine,\$ref is $self.\nAnd the context of \$ref is ",ref($self),".\n";
}
1;
