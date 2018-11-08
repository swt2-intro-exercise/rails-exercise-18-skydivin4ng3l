require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        :title => "Title",
        :venue => "Venue",
        :year => 2000
      ),
      Paper.create!(
        :title => "Title",
        :venue => "Venue",
        :year => 2000
      )
    ])
  end

  it "renders a list of papers" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => 2000.to_s, :count => 2
  end
end
