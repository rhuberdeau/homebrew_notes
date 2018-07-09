class Hop < ApplicationRecord
  has_many :hop_schedules
  has_many :recipes, through: :recipe_schedules

  validates :name, presence: true
end
