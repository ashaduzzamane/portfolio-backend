class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :propertyType
      t.string :propertyAddress
      t.string :propertyCost
      t.string :propertyInvestment
      t.string :propertyExpenses
      t.string :propertyRevenue
      t.string :propertyPrinciple

      t.timestamps
    end
  end
end
