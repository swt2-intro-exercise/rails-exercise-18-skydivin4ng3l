class Author < ApplicationRecord
    validates :first_name, :last_name, :homepage, presence: true,
                                                    length: {minimum:3}
    has_and_belongs_to_many :papers

    def name
        self.first_name + ' ' + self.last_name
    end
end
