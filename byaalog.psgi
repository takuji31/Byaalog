use Byaalog::Web::Handler;
use Byaalog::Web::Handler::Admin;
use Byaalog::Container;
use Plack::Builder;
my $app = Byaalog::Web::Handler->new;
my $app_admin = Byaalog::Web::Handler::Admin->new;

my $home = container('home');
my $conf = container('conf');
builder {
   enable "Plack::Middleware::Static",
           path => qr{^/(img|js|css)/},
           root => $home->file('assets/htdocs')->stringify;
   mount $conf->{hostname}->{default} => $app->handler;
   mount $conf->{hostname}->{admin} => $app_admin->handler;
};
