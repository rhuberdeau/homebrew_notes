class Recipe < ApplicationRecord
  has_many :hop_schedules
  has_many :hops, through: :hop_schedules
  has_many :recipe_malts
  has_many :malts, through: :recipe_malts
  belongs_to :brew_method
  belongs_to :style

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :batch_size, presence: true, numericality: true
  validates :unit, presence: true
  validates :original_gravity, presence: true, numericality: true
  validates :final_gravity, presence: true, numericality: true
end
