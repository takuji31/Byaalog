package Byaalog::Web::Handler;
use Kamui::Web::Handler;

use_container 'Byaalog::Container';
use_context 'Byaalog::Web::Context';
use_dispatcher 'Byaalog::Web::Dispatcher';
use_plugins [qw/Encode +Byaalog::Plugin::TTSite/];
use_view 'Byaalog::View::TTSite';

1;
