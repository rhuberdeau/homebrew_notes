class AddUnitsToHopSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :hop_schedules, :unit, :string, null: false
  end
end
