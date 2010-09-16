package Byaalog::Web::Controller::Admin::Root;
use Kamui::Web::Controller -base;

__PACKAGE__->add_trigger(
    'before_dispatch' => sub {
        my ($class, $c) = @_;
    }
);

sub do_index {
    my ($class, $c, $args) = @_;
}

1;
