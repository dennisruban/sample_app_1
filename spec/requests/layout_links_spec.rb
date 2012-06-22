require 'spec_helper'

describe "LayoutLinks" do
  it "should have the right links on the layout" do
    get '/'
    responce.should have_selector('title', :content => "Home")
  end
  
    it "should have a Contact page at'/" do
    get '/'
    responce.should have_selector('title', :content => "Contact")
  end
  
  
    it "should have a About page at'/" do
    get '/'
    responce.should have_selector('title', :content => "About")
  end
  
    it "should have a Help page at'/" do
    get '/'
    responce.should have_selector('title', :content => "Help")
  end
        
      
    it "should have a Sign up page at'/signup" do
    get '/'
    responce.should have_selector('title', :content => "Sign up")
  end
  
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      get layout_links_path
    end
  end
end
