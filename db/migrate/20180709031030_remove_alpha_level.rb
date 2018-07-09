class RemoveAlphaLevel < ActiveRecord::Migration[5.1]
  def change
    remove_column :hops, :alpha_level, :integer
  end
end
