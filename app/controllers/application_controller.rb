# encoding: utf-8

class ApplicationController < Track::Controller
  
  before_filter :test_filter, :only => :index
  
  def index
    [200, { "Content-Type" => "text/plain"}, ["Welcome #{@name}!"]]
  end
  
  private
  
  def test_filter
    @name = params['name']
    respond [200, { "Content-Type" => "text/plain"}, ["Welcome my friend!"]] if @name == '' || @name.nil?
  end
  
end
