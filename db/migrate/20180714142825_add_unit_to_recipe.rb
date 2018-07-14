class AddUnitToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :unit, :string, null: false
  end
end
