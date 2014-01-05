require 'spec_helper'

describe "StaticPages" do
  
	describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :visible => false, :text => "Ruby on Rails Sample App")
    end
		
		it "should not have the custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end

  end

  describe "help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',  :visible => false, :text => "Ruby on Rails Sample App | Help")
    end
  end

  describe "about page" do
    
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About') 
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',  :visible => false, :text => "Ruby on Rails Sample App | About")
    end
  
  end

end


