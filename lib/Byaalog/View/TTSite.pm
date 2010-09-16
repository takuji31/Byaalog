package Byaalog::View::TTSite;
use Kamui;
use base qw/Kamui::View::TT/;

sub render {
    my $self          = shift;
    my $c             = shift;
    my $load_template = $c->stash->{view};
    unless ($load_template) {
        $c->stash->{view} = $c->guess_filename;
    }
    my $layout = $c->stash->{layout};
    unless ( $layout ) {
        $layout = 'default';
    }
    $c->{load_template} = $layout . '.html';
    $self->SUPER::render($c);
}

1;
