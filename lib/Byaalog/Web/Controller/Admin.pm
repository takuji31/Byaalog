package Byaalog::Web::Controller::Admin;
use Kamui;

sub import {
    my $caller = caller;
    $caller->add_trigger(
        'before_dispatch' => sub {
            my ( $class, $c ) = @_;

            #管理画面用レイアウト
            $c->stash->{layout} = 'admin';
        }
    );
}
1;
