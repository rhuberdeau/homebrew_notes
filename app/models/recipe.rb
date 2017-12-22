class Recipe < ApplicationRecord
  belongs_to :brew_method
  belongs_to :style
end
