require 'rails_helper'

RSpec.describe Paper, type: :model do
  
  paper = FactoryBot.create(:paper)

  it 'should have a first name, last name and a homepage' do
        
    expect(paper.title).to eq("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(paper.venue).to eq("Mind 49: 433-460")
    expect(paper.year).to eq(1950)
            
  end

end
