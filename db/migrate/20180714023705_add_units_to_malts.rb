class AddUnitsToMalts < ActiveRecord::Migration[5.1]
  def change
    add_column :recipe_malts, :unit, :string, null: false
  end
end
