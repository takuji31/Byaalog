package Byaalog::DB::Main::Schema;
use DBIx::Skinny::Schema;
use String::Random;
use DBIx::Skinny::InflateColumn::DateTime::Auto;

install_table article => schema {
    pk qw/id/;
    columns qw/id rid user_id title body status created_at updated_at/;
    trigger pre_insert => \&set_rid;
};

install_table article_category => schema {
    pk qw/id/;
    columns qw/id article_id category_id/;
};

install_table article_comment => schema {
    pk qw/id/;
    columns qw/id article_id comment_id/;
};

install_table category => schema {
    pk qw/id/;
    columns qw/id rid name name_en status created_at updated_at/;
    trigger pre_insert => \&set_rid;
};

install_table comment => schema {
    pk qw/id/;
    columns qw/id rid body status created_at updated_at/;
    trigger pre_insert => \&set_rid;
};

install_table user => schema {
    pk qw/id/;
    columns qw/id rid login_name password name status rank created_at updated_at/;
    trigger pre_insert => \&set_rid;
};

install_utf8_columns qw/ title body /;

sub set_rid {
    my ( $class, $args ) = @_;
    $args->{rid} ||= String::Random->new->randregex('[a-zA-Z0-9]{10}');
}


1;
