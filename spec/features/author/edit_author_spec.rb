require 'rails_helper'

describe "Edit author page", type: :feature do

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit edit_author_path
    
    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it 'should hint the user that the last name is missing ' do
    visit edit_author_path
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[last_name]', with: ''
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
    # @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")

    expect(page).to have_text("Last name can't be blank") 
  end
  
end