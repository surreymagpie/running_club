require 'rails_helper'

RSpec.describe Membership, type: :model do
  it 'has a valid factory' do
    expect(build :membership).to be_valid
  end

  describe 'validation' do
    let(:membership) { build :membership }

    it 'requires a user' do
      membership.user = nil

      expect(membership).to be_invalid
    end

    it 'requires an active flag' do
      membership.active = nil

      expect(membership).to be_invalid
    end

    it 'requires at least one member' do
      membership.members = []

      expect(membership).to be_invalid
    end
  end

  describe 'associations' do
    subject { Membership.new }
    it { expect(subject).to respond_to :user }
    it { expect(subject).to respond_to :members }
  end
end
