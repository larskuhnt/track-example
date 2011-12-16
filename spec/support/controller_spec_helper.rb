module ControllerSpecHelper
  include Rack::Test::Methods
  
  def app
    @app ||= Track::Application.new
  end

end
