package Byaalog::Web::Dispatcher;
use Potch::Web::Dispatcher::Simple;

on '/' => run {
    return 'Article', 'index', false, +{};
};

1;
