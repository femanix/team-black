class Invoice < ApplicationRecord
  belongs_to :student
  belongs_to :plan
end
