class RecipeMalt < ApplicationRecord
  belongs_to :malt
  belongs_to :recipe
end
