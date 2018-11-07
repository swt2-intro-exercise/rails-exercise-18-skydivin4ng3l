class Paper < ApplicationRecord
    validates :title, :venue, :year, presence: true
    #, length: {minimum:3}
end
