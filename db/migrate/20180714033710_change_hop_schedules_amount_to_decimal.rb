class ChangeHopSchedulesAmountToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :hop_schedules, :amount, :decimal, precision: 4, scale: 2
  end
end
