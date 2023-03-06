class Section < ApplicationRecord
  belongs_to :theme
  has_many :paragraphs
  has_many :exercises
end
