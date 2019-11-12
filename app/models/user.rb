class User < ApplicationRecord
    has_many :boughts
    has_many :items
end
