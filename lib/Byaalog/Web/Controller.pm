package Byaalog::Web::Controller;
use Byaalog::Container;
use Byaalog::Model;

sub import {
    my $caller = caller;
    $caller->add_trigger(
        'before_dispatch' => sub {
            my ( $class, $c ) = @_;
            $c->stash->{setting} = container('conf')->{setting};
            $c->stash->{conf} = container('conf');
            my $template_path = $c->guess_filename;
            $template_path =~ s/\.html$//;
            my @class_tree = split '/', $template_path;
            my $title;
            my $titles    = container('conf')->{page};
            my $first_key = shift @class_tree;
            $title = $titles->{$first_key};

            for my $key (@class_tree) {
                $title = $title->{$key};

            }
            $c->stash->{title} = $title;
        }
    );
}
1;

