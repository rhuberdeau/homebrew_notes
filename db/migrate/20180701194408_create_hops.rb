class CreateHops < ActiveRecord::Migration[5.1]
  def change
    create_table :hops do |t|
      t.string :name, null: false
      t.integer :alpha_level, null: false

      t.timestamps
    end
  end
end
