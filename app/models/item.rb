class Item < ApplicationRecord
    belongs_to :location
    belongs_to :user
    has_one :bought
    
    validates :user_name, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, presence: true
    validates :address, presence: true

    def location_attributes=(location)
        self.location = Location.find_or_create_by(zipcode: location[:zipcode] )
        self.location.update(location)
    end
end
