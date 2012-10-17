require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do
    before { visit home_path }
    it "should have the content 'Sample App'" do
      it { should have_selector('h1', :text => 'Sample App') }
    end

    it "should have the right title" do
     it { should have_selector('title',
                                :text => "#{@base_title}") }
    end

    it "should not have home in the title" do
      it {should_not have_selector('title',
                                :text => "#{@base_title} | Home") }
    end
  end

  describe "Contact Page" do
    before { visit contact_path }

    it "should have the content 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the right title" do
      page.should have_selector('title',
                                :text => "#{@base_title} | Contact")
    end
  end

  describe "About Page" do
    before { visit about_path }

    it "should have the content 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
      page.should have_selector('title',
                                :text => "#{@base_title} | About")
    end
  end

  describe "Help Page" do
    before { visit help_path }

    it "should have the hl 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      page.should have_selector('title',
                                :text => "#{@base_title} | Help")
    end
  end
end
