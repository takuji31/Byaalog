package Byaalog::Web::Controller::Admin;
use base qw/Byaalog::Web::Controller/;

__PACKAGE__->add_trigger(
    'before_dispatch' => sub {
        my ( $class, $c ) = @_;
        #管理画面用レイアウト
        $c->stash->{layout} = 'admin';
    }
);

sub do_index {
    my ( $class, $c, $args ) = @_;
}

1;
