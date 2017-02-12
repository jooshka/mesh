# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  entity_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Feature, type: :model do
  let(:feature) { FactoryGirl.build :feature }
  subject { feature }

  context 'associations' do
    it { should belong_to(:entity) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:entity) }
    it { should be_valid }

    describe "when name is not present" do
      before { feature.name = " " }
      it { should_not be_valid }
    end

    describe 'when entity is not present' do
      context 'entity is nil' do
        before { feature.entity = nil }
        it { should_not be_valid }
      end
      context 'entity is not present' do
        before { feature.entity_id = feature.entity_id + 1 }
        it { should_not be_valid }
      end
    end

  end
end
