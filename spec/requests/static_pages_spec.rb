require 'spec_helper'

describe "StaticPages" do
#  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      static_pages_index_path = '/'
      get static_pages_index_path
      response.status.should be(200)
    end
  end
  
  subject {page}
  
  describe "Home Page" do
    before {visit root_path}

    it { should have_selector('h1', :text => 'Sample App') }
    it { should have_selector('title', text:full_title('')) }
  end
  
  describe "help Page" do
    it "should have the content, 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title 'Help'" do
      visit help_path
      page.should have_selector('title', text:full_title('Help'))
      end
  end
  
  describe "About Page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text:'About')
    end

    it "should have the right title 'About US'" do
      visit about_path
      page.should have_selector('title', text:full_title('About Us'))
      end
  end
  
  describe "Contact Page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end
    
    it "should have the right title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text:full_title('Contact'))
      end
  end
  
  
  
end
