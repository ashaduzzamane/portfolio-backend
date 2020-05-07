5.times do
    Property.create({
        propertyType: Faker::Book.title,
        propertyAddress: Faker::Book.title,
        propertyCost: Faker::Book.title,
        propertyInvestment: Faker::Book.title,
        propertyExpenses: Faker::Book.title,
        propertyRevenue: Faker::Book.title,
        propertyPrinciple: Faker::Book.title
    })
end