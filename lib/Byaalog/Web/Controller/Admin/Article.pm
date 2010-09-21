package Byaalog::Web::Controller::Admin::Article;
use Kamui::Web::Controller -base;
use Byaalog::Web::Controller;
use Byaalog::Web::Controller::Admin;
use Byaalog::Container;
use Byaalog::Model;

sub do_index {
    my ( $class, $c, $args ) = @_;
    my $page = $c->req->param('page') || 1;
    my $articles
        = model('Article')->search( {}, { page => $page, rows => 2 } );
    if ( defined $articles ) {
        $c->stash->{articles} = $articles->iter;
        $c->stash->{pager}    = $articles->pager;
    }
}

sub do_add {
    my ( $class, $c, $args ) = @_;
    if ( $c->req->is_post_request ) {
        my $validator = container('validator')->get( 'Article', $c->req );
        $validator->create;
        if ( $validator->has_error ) {
            $c->stash->{validator} = $validator->get_error_messages;
            return;
        }
        else {
            my $data = $validator->valid_data;
            model('Article')->create($data);
            $c->redirect('/article/');
            return;
        }

    }
}

sub do_edit {
    my ( $class, $c, $args ) = @_;
    my $rid = $args->{rid} || '';
    my $article = model('Article')->lookup_by_rid($rid);
    unless ($article) {
        $c->redirect('/article/');
        return;
    }
    $c->stash->{article} = $article;
}



sub do_dispatch {
    my ( $class, $c, $args ) = @_;
    my $add = $c->req->param('add');
    if ($add) {
        $c->redirect('/article/add');
        return;
    }
}

1;
