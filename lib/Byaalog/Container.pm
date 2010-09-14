package Byaalog::Container;
use Kamui::Container -base;

register foo => sub {
    my $self = shift;
};

1;
