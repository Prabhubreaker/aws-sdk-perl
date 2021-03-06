package Paws::Net::Caller;
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use HTTP::Tiny;
        HTTP::Tiny->new(
          agent => 'AWS Perl SDK ' . $Paws::VERSION,
          timeout => 60,
        );
    }
  );

  sub send_request {
    my ($self, $service, $call_object) = @_;
    my $requestObj = $service->prepare_request_for_call($call_object); 
    my $headers    = $requestObj->header_hash;

    # HTTP::Tiny derives the Host header from the URL. It's an error to set it.
    delete $headers->{Host}; 

    my $response = $self->ua->request(
      $requestObj->method,
      $requestObj->url,
      {
        headers => $headers,
        (defined $requestObj->content)?(content => $requestObj->content):(),
      }
    );
    return ($response->{status}, $response->{content}, $response->{headers});
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $status, $content, $headers) = @_;
    if ($status == 599){
      return Paws::Exception->new(message => $content, code => 'ConnectionError', request_id => '');
    } else {
      return $service->handle_response($call_object, $status, $content, $headers);
    }
  }
1;
