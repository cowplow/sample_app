require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	it "should have the h1 'Sample App" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => "Sample App")
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	page.should have_title("Ruby on Rails Tutorial Sample App | ")  	
    end

    it "should not have a custom page tite" do
      visit '/static_pages/home'
      page.should_not have_title("Home")
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('h1', :text => "Help")
  	end

  	it "should have the base title" do
    	visit '/static_pages/help'
    	page.should have_title("Ruby on Rails Tutorial Sample App | ")   	
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      page.should_not have_title("Help")
    end
  end

  describe "About page" do
  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => "About Us")
  	end

  	it "should have the right title" do
    	visit '/static_pages/about'
    	page.should have_title("Ruby on Rails Tutorial Sample App | ")    	
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      page.should_not have_title("About Us")
    end
  end

  describe "Contact" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contact")
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_title("Ruby on Rails Tutorial Sample App | ")      
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      page.should_not have_title("Contact")
    end
  end
end
