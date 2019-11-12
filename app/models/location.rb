class Location < ApplicationRecord
    has_many :items
    # validates :zipcode, uniqueness: true
    # validates :zipcode, presence: true
    def city_zipcode
        
        "#{self.city}, #{self.zipcode} "
    end
end
