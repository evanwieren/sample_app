require 'spec_helper'

describe "Static Pages" do

  before(:each) do
    #
    # Define @base_title
    #
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      #page.should have_content('Sample App')
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "#{@base_title}")
    end

    it "should not have home in the title" do
      visit '/static_pages/home'
      page.should_not have_selector('title',
                                :text => "#{@base_title} | Home")
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "#{@base_title} | Help")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                                :text => "#{@base_title} | Contact")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => "#{@base_title} | About")
    end
  end
end
