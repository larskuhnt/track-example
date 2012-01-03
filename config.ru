require File.join(File.expand_path('..', __FILE__), 'boot')

# define the middleware stack
use Rack::Static, :urls => ['/files'], :root => 'public'
# add more middlewares, i.e.:
# use Rack::CommonLogger... etc

# and run the track app
run Track::Application.new
