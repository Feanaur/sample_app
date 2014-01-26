require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "RoR" }

  describe "Home page" do
    it "should have the 'Sample App' content" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the 'Help' content" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the 'About Us' content" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do 
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content("Contact")
    end
  end

end