class CreateHopSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :hop_schedules do |t|
      t.belongs_to :hop, null: false, index: true
      t.belongs_to :recipe, null: false, index: true
      t.integer :amount, null: false
      t.string :at, null: false

      t.timestamps
    end
  end
end
