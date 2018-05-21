class Member < ApplicationRecord
  validates :first_name, :last_name, :date_of_birth, :gender, presence: true
  validates :date_of_birth, inclusion: {
    in: (100.years.ago..Date.today),
    message: 'is not in the past 100 years'
  }
  validates :gender, inclusion: {
    in: %w[m f],
    message: 'is not a valid option'
  }
end
