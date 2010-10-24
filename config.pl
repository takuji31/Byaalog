use Potch;
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
    hostname => +{
        default => 'http://blog.senchan.jp/',
        admin => 'http://admin.blog.senchan.jp/',
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
    validator_message => +{
        param => +{
            title => 'タイトル',
            body  => '本文'
        },
        function => +{
            not_null => '[_1]が空です',
        },
        message => +{
        },
    },
};
