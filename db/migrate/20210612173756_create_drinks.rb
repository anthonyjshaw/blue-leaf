class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :category
      t.integer :quantity
      t.decimal :price
      t.integer :size

      t.timestamps
    end
  end
end
