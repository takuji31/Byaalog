package Byaalog::Web::Controller::Admin::Root;
use Potch::Web::Controller -base;
use Byaalog::Web::Controller;
use Byaalog::Web::Controller::Admin;

__PACKAGE__->add_trigger(
    'before_dispatch' => sub {
        my ( $class, $c ) = @_;
    }
);

sub do_index {
    my ( $class, $c, $args ) = @_;
}

1;
