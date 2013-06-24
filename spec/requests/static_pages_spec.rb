require 'spec_helper'

describe "Static pages" do

  let(:titlebase) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
    end
    it "should have the title followed by home" do
        visit '/static_pages/home'
        expect(page).to have_title("#{titlebase} | Home")
    end
  end

  describe "Help page" do
      it "should have the content 'Help'" do
         visit '/static_pages/help'
         expect(page).to have_content('Help')
      end
      it "should have the title followed by help" do
         visit '/static_pages/help'
         expect(page).to have_title("#{titlebase} | Help")
      end
  end

  describe "About page" do
      it "should have the content 'About Us'" do
         visit '/static_pages/about'
         expect(page).to have_content('About')
      end 
      it "should have the title followed by about" do
         visit '/static_pages/about'
         expect(page).to have_title("#{titlebase} | About")
      end
  end

  describe "Contact page" do
      it "should have the title follow by Contact" do
          visit '/static_pages/contact'
          expect(page).to have_title("#{titlebase} | Contact")
      end
  end
end
