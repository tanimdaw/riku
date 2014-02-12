require 'spec_helper'

describe "CheckTitles" do
  describe "GET /" do
    it "should show desired title" do
      visit root_path
      expect(page).to have_title 'Riku'
    end
  end
end
