class AddStyleToRecipe < ActiveRecord::Migration[5.1]
  def change
    change_table :recipes do |t|
      t.references  :style
      t.references  :brew_method
      t.integer     :batch_size
      t.float       :original_gravity
      t.float       :final_gravity
    end
  end
end
