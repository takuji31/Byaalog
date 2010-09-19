package Byaalog::Validator::Article;
use Kamui::Web::Validator -base;

sub check {
    my $self = shift;
    $self->{engine}->check(
        title => [qw/NOT_NULL/],
        body  => [qw/NOT_NULL/],
    );
}
1;
