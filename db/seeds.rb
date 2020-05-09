5.times do
    Financial.create({
        accountType: Faker::Bank.name,
        institution: Faker::Bank.name,
        accountDescription: Faker::Bank.name,
        accountValue: 4500.45
    })
end