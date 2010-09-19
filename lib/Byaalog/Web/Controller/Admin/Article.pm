package Byaalog::Web::Controller::Admin::Article;
use Kamui::Web::Controller -base;
use Byaalog::Web::Controller;
use Byaalog::Web::Controller::Admin;
use Byaalog::Container;

sub do_index {
    my ( $class, $c, $args ) = @_;
}

sub do_add {
    my ( $class, $c, $args ) = @_;
    if($c->req->is_post_request){
        my $validator = container('validator')->get('Article',$c->req)->check;
        if($validator->has_error){
            $c->stash->{validator} = $validator->get_error_messages;
            return;
        }else{
            my $data = $validator->valid_data;
            model('Article')->create($data);
            $c->res->redirect('/article/');
        }

    }
}

1;
