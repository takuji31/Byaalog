package Byaalog::Web::Dispatcher::Admin;
use Kamui::Web::Dispatcher;

on '/' => run {
    return 'Root', 'index', FALSE, +{};
};

1;
