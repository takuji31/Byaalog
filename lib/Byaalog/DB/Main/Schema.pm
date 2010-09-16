package Byaalog::DB::Main::Schema;
use DBIx::Skinny::Schema;

install_table article => schema {
    pk qw/id/;
    columns qw/id rid title body status created_at updated_at/;
};

1;