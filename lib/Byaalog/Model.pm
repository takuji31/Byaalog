package Byaalog::Model;
use Potch;

use Byaalog::Container;
use DBIx::Skinny::ModelLoader setup => {
    skinny          => container('db'),
    methods         => ['search_with_pager'],
    row_class_remap => 1,
};
1;

