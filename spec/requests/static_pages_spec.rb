require 'spec_helper'

describe "StaticPages" do
	
	describe "Home Page" do
		
		it "should have the content 'NW Womens Composite Team Info'" do
			visit '/static_pages/home'
			expect(page).to have_content('NW Womens Composite Team')
		end
		
		it "should have the the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("NW Womens Composite Team")
		end
		
		it "should not have a custom title" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end
	
	describe "Help Page" do
	
		it "should have the content 'Help' " do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		
		it "should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title('NW Womens Composite Team | Help')
		end
	end
	
	describe "About Page" do
		
		it "should have the content 'About'" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end
		
		it "should have the title 'NW Womens Composite Team | About'" do
			visit '/static_pages/about'
			expect(page).to have_title('NW Womens Composite Team | About')
		end
	end
end
