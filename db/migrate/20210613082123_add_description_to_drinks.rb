class AddDescriptionToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :description, :text
  end
end
