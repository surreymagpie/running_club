require 'rails_helper'

RSpec.feature 'Creating a membership', type: :feature do
  let(:user)    { create(:user, :confirmed) }
  let(:member)  { attributes_for(:member) }
  context 'when not signed in' do
    scenario 'redirects to sign in path' do
      visit root_path
      click_link 'Become a member'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end
  end

  context 'when signed in' do
    scenario 'is successful' do
      sign_in(user)

      visit root_path
      click_link 'Become a member'

      fill_in :membership_members_attributes_0_first_name, with: member[:first_name]
      fill_in :membership_members_attributes_0_last_name, with: member[:last_name]
      fill_in :membership_members_attributes_0_date_of_birth, with: member[:date_of_birth]
      choose 'membership[members_attributes][0][gender]', option: member[:gender]

      click_button 'Create Membership'

      expect(page).to have_content 'You have successfully joined.'
    end
  end
end
