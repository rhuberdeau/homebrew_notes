class AddAlphaLevelToHopSchedule < ActiveRecord::Migration[5.1]
  def change
    add_column :hop_schedules, :alpha_level, :integer
  end
end
