
package Paws::Glacier::ListVaults {
  use Moose;
  has accountId => (is => 'ro', isa => 'Str', required => 1);
  has limit => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVaults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ListVaultsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListVaultsResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListVaults - Arguments for method ListVaults on Paws::Glacier

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVaults on the 
Amazon Glacier service. Use the attributes of this class
as arguments to method ListVaults.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListVaults.

As an example:

  $service_obj->ListVaults(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> accountId => Str

  

The C<AccountId> is the AWS Account ID. You can specify either the AWS
Account ID or optionally a '-', in which case Amazon Glacier uses the
AWS Account ID associated with the credentials used to sign the
request. If you specify your Account ID, do not include hyphens in it.










=head2 limit => Str

  

The maximum number of items returned in the response. If you don't
specify a value, the List Vaults operation returns up to 1,000 items.










=head2 marker => Str

  

A string used for pagination. The marker specifies the vault ARN after
which the listing of vaults should begin.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for ListVaults in Paws::Glacier

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
