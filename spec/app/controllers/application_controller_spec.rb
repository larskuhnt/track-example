# encoding: utf-8
require 'spec_helper'

describe ApplicationController do
  include ControllerSpecHelper
  
  it "should say 'Welcome my friend!' for GET /" do
    get "/"
    last_response.body.should == 'Welcome my friend!'
  end
  
  it "should say 'Welcome Batman!' for GET /?name=Batman" do
    get "/?name=Batman"
    last_response.body.should == 'Welcome Batman!'
  end
  
  it "should return 404 for GET /boom" do
    get "/boom"
    last_response.status.should == 404
  end
  
end
