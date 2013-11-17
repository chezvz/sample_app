require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App | "}
  ptitles = ["Home", "Help", "About Us", "Contact"]
  pcontents = ["Sample App",  "Help", "About", "Contact"]
  proutes = %w{home help about contact} 

  ptitles.zip(pcontents, proutes).each do |x|
    describe "#{x[0]} page" do
      it "should have the content '#{x[1]}'" do
        visit "/static_pages/#{x[2]}"
        expect(page).to have_content(x[1])
      end
    end

    it "should have the title '#{x[0]}'" do
      visit "/static_pages/#{x[2]}"
      expect(page).to have_title(base_title + x[0])
    end
  end
end


