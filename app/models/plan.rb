class Plan < ApplicationRecord
  belongs_to :modality
  has_many :students
end
