package Byaalog::Container;
use Kamui::Container -base;

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

1;
