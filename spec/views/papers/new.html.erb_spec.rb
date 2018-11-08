require 'rails_helper'

RSpec.describe "papers/new", type: :view do
  before(:each) do
    assign(:paper, Paper.new(
      :title => "MyTitle",
      :venue => "MyVenue",
      :year => 1999
    ))

  end

  it "renders new paper form" do
    render

    assert_select "form[action=?][method=?]", papers_path, "post" do

      assert_select "input[name=?]", "paper[title]"

      assert_select "input[name=?]", "paper[venue]"

      assert_select "input[name=?]", "paper[year]"
    end
  end
end
