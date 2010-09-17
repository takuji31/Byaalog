package Byaalog::Web::Controller::Admin::Root;
use base qw/Byaalog::Web::Controller::Admin/;

__PACKAGE__->add_trigger(
    'before_dispatch' => sub {
        my ( $class, $c ) = @_;
    }
);

sub do_index {
    my ( $class, $c, $args ) = @_;
}

1;
