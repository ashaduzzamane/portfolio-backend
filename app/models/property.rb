class Property < ApplicationRecord
    validates :propertyType, presence: true
    validates :propertyAddress, presence: true
    validates :propertyCost, presence: true
    validates :propertyInvestment, presence: true
    validates :propertyExpenses, presence: true
    validates :propertyRevenue, presence: true
    validates :propertyPrinciple, presence: true
end
