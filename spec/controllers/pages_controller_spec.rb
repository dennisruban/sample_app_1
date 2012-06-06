require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",:content => "Ruby on rails Tutorial Sample App 1 | Home")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
        it "should have the right title" do
      get 'about'
      response.should have_selector("title",:content => "Ruby on rails Tutorial Sample App 1 | About")
    end
  end


  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
        it "should have the right title" do
      get 'contact'
      response.should have_selector("title",:content => "Ruby on rails Tutorial Sample App 1 | Contact")
    end
  end
end
