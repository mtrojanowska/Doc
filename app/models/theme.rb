class Theme < ApplicationRecord
  has_many :sections
  has_many :exercises, through: :sections
end
