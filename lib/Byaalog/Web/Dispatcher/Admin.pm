package Byaalog::Web::Dispatcher::Admin;
use Kamui::Web::Dispatcher;

on '/' => run {
    return 'Admin::Root', 'index', FALSE, +{};
};

1;
