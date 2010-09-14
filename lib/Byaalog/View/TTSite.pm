package Byaalog::View::TTSite;
use Kamui;
use base qw/Kamui::View::TT/;

sub render {
    my $self = shift;
    my $c = shift;
    my $load_template = $c->{load_template};
    if($load_template){
        $c->stash->{view_filename} = $load_template;
    }
    $c->{load_template} = $c->layout.'.html';
    use Data::Dumper;
    warn Dumper $c->{load_template};
    $self->SUPER::render($c);
}

1;
