require 'spec_helper'

describe PagesController do
	render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'home'" do
    it "should have title" do
      get 'home'
      response.should have_selector("title", :content => " | home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should have title" do
      get 'contact'
      response.should have_selector("title", :content => " | contact")
    end
  end

  describe "GET 'about'" do
    it "should be success" do
      get 'about'
      response.should be_success
    end
  end
  
  describe "GET 'about'" do
    it "should have title" do
      get 'about'
      response.should have_selector("title", :content => " | about")
    end
  end

end
