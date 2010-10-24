package Byaalog::Web::Dispatcher::Admin;
use Potch::Web::Dispatcher::Simple;

on '/' => run {
    return 'Admin::Root', 'index', false, +{};
};

on '/user/(.*)' => run {
    return 'Admin::User', $1 || 'index' , false, +{};
};

on '/article/edit/([a-zA-Z0-9]*)' => run {
    return 'Admin::Article', 'edit' , false, +{ rid => $1 };
};

on '/article/(.*)' => run {
    return 'Admin::Article', $1 || 'index' , false, +{};
};

1;
