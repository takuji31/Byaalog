package Byaalog::Plugin::TTSite;
use Kamui;
use base 'Kamui::Plugin';

sub register_method {
    +{  layout => sub {
            my ( $self, $value ) = @_;
            if ( defined $value ) {
                $self->{_layout} = $value;
            }
            my $layout = $self->{_layout};
            unless ( defined $layout ) {
                $layout = 'default';
            }
            return $layout;
            }
    };
}

1;
