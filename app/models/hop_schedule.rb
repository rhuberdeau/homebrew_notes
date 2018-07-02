class HopSchedule < ApplicationRecord
  belongs_to :hop
  belongs_to :recipe
end
