require 'spec_helper'

describe PagesController do
render views

before(:each) do
@base_title = "ruby on rails tutorials sample app"
end
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
	end
it "should have the right title" do
get 'home'
response.should have_selector("title",:content=>"#{@base_title | Home}")
it "should have a non-blank body"
get "home"
response.body.should_not=~/<body>\s*<\/body>/
end
end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  
 it "should have the right title"
	get 'contact'
response.should have_selector("title",
			:content=>"#{base_title} | Contact")
end
end

describe "GET 'about' " do
 it "should be successfull" do
 get 'about'
response.should be_success
end

it "should have the right title" do
get 'about'
response.should have_selector("title",
			:content=>"#{base_title} | About" )

 response.should be_success
end 
end

describe "GET 'help' " do
 it "should be successfull" do
 get 'help'
response.should be_success
end

it "should have the right title" do
get 'help'
response.should have_selector("title",
			:content=>"#{base_title} | Help" )

end 
end

end
