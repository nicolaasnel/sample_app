require 'spec_helper'

def validate_contains_header(page_name, page_pos, text="")
	describe page_name
		it "#{page_name} should have the content '#{text}'" do
      		visit page_pos
      		expect(page).to have_content(text)
    	end
    end

def validate_contains_title(page_name, page_pos)
	describe page_name

		it "#{page_name} page should have the right title" do
      		visit page_pos
      		expect(page).to have_title("Ruby on Rails Tutorial Sample App | #{page_name}")
    	end
end
 
describe "StaticPages" do

  	validate_contains_header("Home page","/static_pages/home", "Sample App")
  	validate_contains_header("Help page","/static_pages/help", "Help")
	  validate_contains_header("About page","/static_pages/about", "About Us")    
    validate_contains_header("Contact page","/static_pages/contact", "Contact Us")

  	validate_contains_title("Home","/static_pages/home")
  	validate_contains_title("Help","/static_pages/help")    
    validate_contains_title("About","/static_pages/about")
	  validate_contains_title("Contact","/static_pages/contact")

end