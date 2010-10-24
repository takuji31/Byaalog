package Byaalog::Web::Dispatcher::Admin;
use Potch::Web::Dispatcher;

on '/' => run {
    return 'Admin::Root', 'index', FALSE, +{};
};

on '/user/(.*)' => run {
    return 'Admin::User', $1 || 'index' , FALSE, +{};
};

on '/article/edit/([a-zA-Z0-9]*)' => run {
    return 'Admin::Article', 'edit' , FALSE, +{ rid => $1 };
};

on '/article/(.*)' => run {
    return 'Admin::Article', $1 || 'index' , FALSE, +{};
};

1;
