class Item < ApplicationRecord
    belongs_to :location
    belongs_to :user
    has_one :bought
    def location_attributes=(location)
        self.location = Location.find_or_create_by(zipcode: location[:zipcode] )
        self.location.update(location)
     end
end
