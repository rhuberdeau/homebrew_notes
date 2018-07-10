class Recipe < ApplicationRecord
  belongs_to :brew_method
  belongs_to :style
  has_many :hop_schedules
  has_many :hops, through: :hop_schedules
  has_many :recipe_malts
  has_many :malts, through: :recipe_malts

  accepts_nested_attributes_for :hop_schedules, allow_destroy: true
  accepts_nested_attributes_for :recipe_malts, allow_destroy: true
end
