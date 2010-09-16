package Byaalog::Web::Handler::Admin;
use Kamui::Web::Handler;

use_container 'Byaalog::Container';
use_context 'Byaalog::Web::Context';
use_dispatcher 'Byaalog::Web::Dispatcher::Admin';
use_plugins [qw/Encode/];
use_view 'Byaalog::View::TTSite';

1;
