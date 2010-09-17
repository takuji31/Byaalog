package Byaalog::Web::Controller;
use Kamui::Web::Controller -base;
use Byaalog::Container;

__PACKAGE__->add_trigger(
    'before_dispatch' => sub {
        my ($class, $c) = @_;
        $c->stash->{setting} = container('conf')->{setting};
    }
);

1;

