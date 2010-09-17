package Byaalog::Web::Controller::Admin::Article;
use base qw/Byaalog::Web::Controller::Admin/;

sub do_index {
    my ( $class, $c, $args ) = @_;
}

sub do_add {
    my ( $class, $c, $args ) = @_;
    if($c->req->is_post_request){
        model('Article')->create();

    }
}

1;
