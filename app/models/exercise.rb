class Exercise < ApplicationRecord
  belongs_to :step
  belongs_to :section

  enum status: { inactive: 1, active: 2 }

  # scope :step, ->(step) { where(step:) }
  # scope :section, ->(section) { where(section:) }

  # scope :theoretical, ->(section) { where(section:) }
  # scope :practical, ->(step) { where(step:) }

  # def self.theoretical(section)
  #   where(section:)
  # end

  # def self.practical(step)
  #   where(step:)
  # end
end
