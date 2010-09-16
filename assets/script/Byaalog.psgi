use Byaalog::Web::Handler;
use Byaalog::Container;
use Plack::Builder;
my $app = Byaalog::Web::Handler->new;
$app->setup;

my $home = container('home');
builder {
   enable "Plack::Middleware::Static",
           path => qr{^/(img|js|css)/},
           root => $home->file('assets/htdocs')->stringify;

   $app->handler;
};
