package Byaalog::Web::Controller::Admin;
use Potch;

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
