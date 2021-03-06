package Paws::CloudDirectory::ObjectReference;
  use Moose;
  has Selector => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ObjectReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::ObjectReference object:

  $service_obj->Method(Att1 => { Selector => $value, ..., Selector => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::ObjectReference object:

  $result = $service_obj->Method(...);
  $result->Att1->Selector

=head1 DESCRIPTION

Reference that identifies an object.

=head1 ATTRIBUTES


=head2 Selector => Str

  Allows you to specify an object. You can identify an object in one of
the following ways:

=over

=item *

I<$ObjectIdentifier> - Identifies the object by C<ObjectIdentifier>

=item *

I</some/path> - Identifies the object based on path

=item *

I<#SomeBatchReference> - Identifies the object in a batch call

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

