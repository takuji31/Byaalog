package Byaalog::Web::Dispatcher;
use Potch::Web::Dispatcher;

on '/' => run {
    return 'Article', 'index', FALSE, +{};
};

1;
