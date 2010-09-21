package  Byaalog::Web::Controller::Article;
use Kamui::Web::Controller -base;
use Byaalog::Web::Controller;

__PACKAGE__->add_trigger(
    before_dispatch => sub{
        my ($class, $c, $args) = @_;
        $c->stash->{layout} = 'article';
    },
);

sub do_index {
    my ($class, $c ,$args) = @_;
}


1;
