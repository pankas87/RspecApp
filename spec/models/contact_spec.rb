require 'rails_helper'

RSpec.describe Contact, type: :model do
  let(:contact) { FactoryGirl.build(:contact) }

  context 'validation rules' do
    it "has a valid factory" do
      expect(contact).to be_valid
    end

    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:phone_number) }
    it { is_expected.to validate_presence_of(:address) }
  end
end