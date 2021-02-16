class Pet < ApplicationRecord
  # associations
  # validations
  SPECIES = ['snail', 'kangaroo', 'monkey', 'dolphin', 'cat', 'dog']
  validates :name, presence: true
  validates :found_on, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    # return an integer
    (Date.today - found_on).to_i
  end
end
