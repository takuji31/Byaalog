package Byaalog::Container;
use Potch::Container -base;
use Senchan::Validator;

register 'validator' => sub {
    my $self = shift;
    Senchan::Validator->new(
        {
            base_class  => 'Byaalog::Validator',
            message     => $self->get('conf')->{validator_message} || {},
            constraints => [qw/ Date Email /],
        }
    );
};

register 'db' => sub {
    my $self = shift;
    Byaalog::DB::Main->new(
        {
            dsn => $self->get('conf')->{datasource}->[0],
            connect_options => { AutoCommit => 1 },
        }
    );
};
1;
