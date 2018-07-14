class ChangeRecipeMaltAmountToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :recipe_malts, :amount, :decimal, precision: 4, scale: 2
  end
end
