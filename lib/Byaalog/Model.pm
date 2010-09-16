package Byaalog::Model;
use strict;
use warnings;
use Cache::Memory;
use Byaalog::DB::Main;
use Byaalog::Container;
use base 'DBIx::Skinny::Object';

sub get_cache {
    my $self = shift;
    my $cache = Cache::Memory->new(namespace => ref $self);

    return $cache;
}

sub get_cache_expire { 60 }

sub get_db {
    my $db = Byaalog::DB::Main->new(
        {
            dsn => container('conf')->{datasource},
            connect_options => { AutoCommit => 1 },
        }
    );
    $db->object_loader('Byaalog::Model');
    return $db;
}

1;

