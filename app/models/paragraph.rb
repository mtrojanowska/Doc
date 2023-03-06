class Paragraph < ApplicationRecord
  belongs_to :section
  has_many_attached :images
end
