Track::Routes.define do
  # Define routes via the route method:
  # The controller class should subclass Track::Controller and must be required before Track.boot!
  # route PATH, CONTROLLER_CLASS, ACTION, REQUEST_METHODS
  # examples:
  #
  # allow only get requests for /users/:id and route them to the show method
  # of the UsersController class
  # route '/users/:id', UsersController, :show, :get
  #
  # if no REQUEST_METHODS are provided the route matches on all http-methods
  # route '/users', UsersController, :index
  #
  # you can specify arbitrary methods to match
  # route '/users/:id', UsersController, :create_or_update, [:put, :post]
  #
  # use regular expressions in the path
  # route '/users/of_age/\d{1,3}/, UsersController, :of_age
  
  route '/', ApplicationController, :index, [:get, :post]
end
