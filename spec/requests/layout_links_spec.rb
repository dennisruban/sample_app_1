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
  
  
  describe "when not signed in" do
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path, 
                                         :content => "Sign in")
    end
  end
  
  
  describe "when signed in" do
    
    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email,     :with => @user.email
      fill_in :password,  :with => @user.password
      click_button        
    end
    
    
    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                         :content => "Sign out")
    end
    
    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user,
                                         :content => "profile"))
    end
  end
end
