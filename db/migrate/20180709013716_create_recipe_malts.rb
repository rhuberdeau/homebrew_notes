class CreateRecipeMalts < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_malts do |t|
      t.belongs_to :malt, null: false, index: true
      t.belongs_to :recipe, null: false, index: true
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
