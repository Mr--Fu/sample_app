require 'spec_helper'

describe FooBartsController do

  describe "GET 'baz'" do
    it "returns http success" do
      get 'baz'
      response.should be_success
    end
  end

  describe "GET 'quux'" do
    it "returns http success" do
      get 'quux'
      response.should be_success
    end
  end

end
