class Membership < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :members

  validates :active, presence: true
  validate :members?

private

  def members?
    errors.add(:base, 'membership must have at least one member.') if members.empty?
  end
end
