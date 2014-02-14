require 'spec_helper'

describe "CheckTitles" do
  describe "GET /" do
    it "xshould show desired title" do
      visit root_path
      expect(page).to have_title 'Riku'
    end
  end
end

describe "NavLinks" do 
	it "shoud contain required links" do 
		visit root_path
		page.find "#nav li", :text => "Home"
		page.find "#nav li", :text => "Blog"
    page.find "#nav li", :text => "About Me"
	end
end

describe "AboutMePageExistance" do
  it "shold go to about me page when clicked to about me link" do
    visit root_path
    click_link('About Me')
    current_path.should == about_me_path
  end
end

