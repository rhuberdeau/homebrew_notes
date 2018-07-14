class AddNullContrainstsToRecipes < ActiveRecord::Migration[5.1]
  def change
    change_column :recipes, :name, :string, null: false
  end
end
