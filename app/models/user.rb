class User < ApplicationRecord
    has_many :boughts, :dependent => :destroy
    has_many :items, :dependent => :destroy
    has_secure_password

    validates :user_name, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, presence: true
    validates :address, presence: true
end
