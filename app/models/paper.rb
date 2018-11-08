class Paper < ApplicationRecord
    validates :title, :venue, :year, presence: true
    validates :year, format: { with: /[1|2][0-9]{3}/, message: "%{value} must be numeric and 4 digits long"}
    #, length: {minimum:3}
end
