class CreateFinancials < ActiveRecord::Migration[6.0]
  def change
    create_table :financials do |t|
      t.string :accountType
      t.string :institution
      t.string :accountDescription
      t.float :accountValue

      t.timestamps
    end
  end
end
