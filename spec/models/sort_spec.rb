# == Schema Information
#
# Table name: sorts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Sort, type: :model do
  let(:sort) { FactoryGirl.build(:sort) }

  subject { sort }

  it { should respond_to(:name) }

  context 'associations' do
    it { should have_many(:entities).dependent(:destroy) }
  end

  context 'validations' do
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
