require File.join(File.expand_path('..', __FILE__), 'boot')

use Rack::Static, :urls => ['/files'], :root => 'public'
run Track::Application.new
