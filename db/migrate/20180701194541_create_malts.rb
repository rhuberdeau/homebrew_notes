class CreateMalts < ActiveRecord::Migration[5.1]
  def change
    create_table :malts do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
