# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  entity_id  :integer
#  creator_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Subject, type: :model do
  let(:subj) { FactoryGirl.build :subject }
  subject { subj }

  context 'associations' do
    it { should belong_to(:creator) }
    it { should belong_to(:entity) }
  end

  context 'validations' do
    it { should validate_presence_of(:creator) }
    it { should validate_presence_of(:entity) }
    it { should be_valid }

    describe 'when creator is not present' do
      context 'creator is nil' do
        before { subj.creator = nil }
        it { should_not be_valid }
      end
      context 'creator is not present' do
        before { subj.creator_id = subj.creator_id + 1 }
        it { should_not be_valid }
      end
    end

    describe 'when entity is not present' do
      context 'entity is nil' do
        before { subj.entity = nil }
        it { should_not be_valid }
      end
      context 'entity is not present' do
        before { subj.entity_id = subj.entity_id + 1 }
        it { should_not be_valid }
      end
    end

  end

end
