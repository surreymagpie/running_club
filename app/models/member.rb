class Member < ApplicationRecord
  has_and_belongs_to_many :memberships
  has_many :users, through: :memberships

  validates :first_name, :last_name, :date_of_birth, :gender, presence: true
  validates :date_of_birth, inclusion: {
    in: (100.years.ago..Time.zone.today),
    message: 'is not in the past 100 years'
  }
  validates :gender, inclusion: {
    in: %w[m f],
    message: 'is not a valid option'
  }
end
