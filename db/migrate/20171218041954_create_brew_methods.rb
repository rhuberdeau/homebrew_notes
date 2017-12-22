class CreateBrewMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :brew_methods do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
