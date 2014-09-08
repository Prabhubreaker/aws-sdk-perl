
package Aws::EC2::DescribeCustomerGateways {
  use Moose;
  has CustomerGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CustomerGatewayId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomerGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeCustomerGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;