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
    setting => +{
        title => 'SenchanBlog',
        description => 'SenchanBlog',
    },
    page => +{
        root => +{
            index => 'index'
        },
        admin => +{
            root => +{
                index => 'index'
            },
            user => +{
                index => 'ユーザー一覧'
            },
        },
    },
};
