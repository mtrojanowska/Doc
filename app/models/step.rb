class Step < ApplicationRecord
  belongs_to :task
  has_many :exercises
end
