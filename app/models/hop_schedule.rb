class HopSchedule < ApplicationRecord
  belongs_to :hop
  belongs_to :recipe

  attr_accessor :name
end
