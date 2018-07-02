class Recipe < ApplicationRecord
  belongs_to :brew_method
  belongs_to :style
  has_many :hop_schedules
  has_many :hops, through: :hop_schedules

  accepts_nested_attributes_for :hop_schedules


  def malt_additions

  end
end
