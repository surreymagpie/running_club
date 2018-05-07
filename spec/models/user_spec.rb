require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    it 'has a valid factory' do
      expect(build :user).to be_valid
    end

    it 'fails without email address' do
      expect(build :user, email: '').to be_invalid
    end

    it 'fails without password' do
      expect(build :user, password: '').to be_invalid
    end
  end
end
