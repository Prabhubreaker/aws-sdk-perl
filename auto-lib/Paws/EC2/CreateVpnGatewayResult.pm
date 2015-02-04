
package Paws::EC2::CreateVpnGatewayResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpnGateway => (is => 'ro', isa => 'Paws::EC2::VpnGateway', traits => ['Unwrapped'], xmlname => 'vpnGateway');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnGatewayResult

=head1 ATTRIBUTES

=head2 VpnGateway => Paws::EC2::VpnGateway

  

Information about the virtual private gateway.











=cut
