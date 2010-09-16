package Byaalog::View::TTSite;
use Kamui;
use base qw/Kamui::View::TT/;

sub render {
    my $self = shift;
    my $c = shift;
    my $load_template = $c->{view};
    unless($load_template){
        $c->stash->{view} = $c->guess_filename;
    }
    $c->{load_template} = $c->stash->{layout}.'.html';
    $self->SUPER::render($c);
}

1;
