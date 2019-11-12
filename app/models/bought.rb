class Bought < ApplicationRecord
    belnogs_to :user
    belnogs_to :item
end
