Track::Routes.define do
  route '/', ApplicationController, :index, [:get, :post]
end
