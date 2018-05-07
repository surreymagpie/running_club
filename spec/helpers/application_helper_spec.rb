require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do

  describe 'page_title' do

    before do
      allow(ENV).to receive(:[]).with('site_name') { 'Our Running Club' }
    end

    context 'when none provided' do
      it 'provides the site name as default' do
        title=""
        expect(helper.page_title(title)).to eq 'Our Running Club'
      end
    end

    context 'when string is provided' do
      it 'prepends the title with the string' do
        title = 'Something'
        expect(helper.page_title(title)).to eq 'Something | Our Running Club'
      end
    end
  end
end
