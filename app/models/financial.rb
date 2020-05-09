class Financial < ApplicationRecord
    validates :accountType, presence: true
    validates :institution, presence: true
    validates :accountDescription, presence: true
    validates :accountValue, presence: true
end
