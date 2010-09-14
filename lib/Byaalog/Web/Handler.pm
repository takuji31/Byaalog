package Byaalog::Web::Handler;
use Kamui::Web::Handler;

use_container 'Byaalog::Container';
use_context 'Byaalog::Web::Context';
use_dispatcher 'Byaalog::Web::Dispatcher';
use_plugins [qw/Encode/];
use_view 'Kamui::View::TT';

1;
