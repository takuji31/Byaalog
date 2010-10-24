package make_schema_file;
use lib '/home/takuji/project/Byaalog/lib';
use Potch;
use Byaalog::Container;
use DBIx::Skinny::Schema::Loader qw/make_schema_at/;
print make_schema_at(
    'Byaalog::DB::Main::Schema',
    {},
    container('conf')->{datasource},
);
