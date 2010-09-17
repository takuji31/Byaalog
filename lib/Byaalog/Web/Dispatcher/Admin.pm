package Byaalog::Web::Dispatcher::Admin;
use Kamui::Web::Dispatcher;

on '/' => run {
    return 'Admin::Root', 'index', FALSE, +{};
};

on '/user/(.*)' => run {
    return 'Admin::User', $1 || 'index' , FALSE, +{};
};

on '/article/(.*)' => run {
    return 'Admin::Article', $1 || 'index' , FALSE, +{};
};

1;
