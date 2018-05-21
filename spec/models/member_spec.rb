require 'rails_helper'

RSpec.describe Member, type: :model do
  it 'has a valid factory' do
    expect(build :member).to be_valid
  end

  context 'validations' do
    it 'needs a first name' do
      expect(build :member, first_name: '').to be_invalid
    end

    it 'needs a last name' do
      expect(build :member, last_name: '').to be_invalid
    end

    describe 'date of birth' do
      it 'must be present' do
        expect(build :member, date_of_birth: nil).to be_invalid
      end

      it 'must be in the past' do
        expect(build :member, date_of_birth: 1.day.ago).to be_valid
        expect(build :member, date_of_birth: 1.day.since).to be_invalid
      end
    end

    describe 'gender' do
      it 'must be present' do
        expect(build :member, gender: '').to be_invalid
      end

      it 'must be a valid option' do
        expect(build :member, gender: 'm').to be_valid
        expect(build :member, gender: 'f').to be_valid
        expect(build :member, gender: 'x').to be_invalid
      end
    end
  end
end
