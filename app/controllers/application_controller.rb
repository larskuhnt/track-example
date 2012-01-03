# encoding: utf-8

class ApplicationController < Track::Controller
  
  # filters except :only, :except and no options
  before_filter :do_before, :only => :index
  after_filter  :do_after
  
  def index
    [200, { "Content-Type" => "text/plain"}, ["Welcome #{@name}!"]]
  end
  
  private
  
  def do_before
    @name = params['name']
    respond [200, { "Content-Type" => "text/plain"}, ["Welcome my friend!"]] if @name == '' || @name.nil?
  end
  
  def do_after
    p 'Done with all the greetings!'
  end
  
end
