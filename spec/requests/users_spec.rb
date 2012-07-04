require 'spec_helper'

describe "Users" do
  
  describe "signup" do
    
    describe "failure" do
      
      it "should not make a new user" do
        lambda do
        visitsignup_path
        fill_in "Name",           :width => ""
        fill_in "Email",          :width => "" 
        fill_in "Password",       :width => ""
        fill_in "Confirmation",   :width => ""
        click_button
        response.should render_template('users/new')
        response.should have_selector("div#error_explanation")
        end.should_not change(User, :count)
      end    
    end     
        
        describe "success" do
          
          it "should make a new user" do
            lambda do
              visit signup_path
              fill_in "Name",         :width => "Example User"
              fill_in "Email",        :width => "user@example.com"
              fill_in "Password",     :width => "foobar"
              fill_in "Confirmation", :width => "foobar"
              click_button
              response.should have_selector("div.flash.success", :content => "Welcome")
              response.should render_template('users/show')
            end.should change(User, :count) .by(1)
           end
         end
       end        
     end


  
  
  
  
  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_path
      response.status.should be(200)
    end
  end

