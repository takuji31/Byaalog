package Byaalog::Validator::Article;
use base qw/Senchan::FormValidator/;

sub create {
    my $self = shift;
    $self->check(
        title => [qw/NOT_NULL/],
        body  => [qw/NOT_NULL/],
    );
}
1;
