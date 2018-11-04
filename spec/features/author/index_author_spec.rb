require 'rails_helper'

describe "author index page", type: :feature do

    before :each do
        # visit new_author_path
        # page.fill_in 'author[first_name]', with: 'Alan'
        # page.fill_in 'author[last_name]', with: 'Turing'
        # page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
        # find('input[type="submit"]').click
        visit authors_path
        # @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        @author = FactoryBot.create(:author)

    end

    it "should render without error" do
        expect(page).to have_text("Authors")
    end

    it "should have a link to create a new author" do
        expect(page).to have_link 'New author', href: new_author_path
    end

    it "should have a link to each authors details" do
        expect(page).to have_link 'Show Details', href: author_path(@author)

    end

    it 'should have a table listing the full names as well as homepages of autors ' do
        expect(page).to have_table 'First Name'

    end



end