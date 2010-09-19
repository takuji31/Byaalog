package Byaalog::Web::Dispatcher;
use Kamui::Web::Dispatcher;

on '/' => run {
    return 'Article', 'index', FALSE, +{};
};

1;
