package Byaalog::Model;
use Potch;

use Byaalog::Container;
use DBIx::Skinny::ModelLoader setup => {
    skinny => container('db'),
};
1;

