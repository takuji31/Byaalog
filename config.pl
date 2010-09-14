use Kamui;
use Byaalog::Container;
use Path::Class;

my $home = container('home');

return +{
    view => {
        tt => +{
            path => $home->file('assets/tmpl')->stringify,
        },
    },
    datasource => +{
    },
    plugins => +{
    },
};
