package Byaalog::View::TTSite;
use Kamui;
use base qw/Kamui::View::TT/;

sub render {
    my $self = shift;
    my $c = shift;
    my $load_template = $c->{load_template};
    unless($load_template){
        $load_template = $c->guess_filename;
    }
    $c->stash->{view} = $load_template;
    $c->{load_template} = $c->layout.'.html';
    $self->SUPER::render($c);
}

1;
