use Potch;

return +{
    datasource => [
        'dbi:mysql:blog_dev;user=root',
        '',
        '',
    ],
    hostname => +{
        default => 'http://blog.dev.senchan.jp/',
        admin => 'http://admin.blog.dev.senchan.jp/',
    },
}; 
