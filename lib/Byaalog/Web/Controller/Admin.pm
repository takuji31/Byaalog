package Byaalog::Web::Controller::Admin;
use Potch;

use parent 'Byaalog::Web::Controller';

__PACKAGE__->add_trigger(
    'before_dispatch' => sub {
        my ( $class, $c ) = @_;

        #管理画面用レイアウト
        $c->stash->{layout} = 'admin';
    }
);

1;
