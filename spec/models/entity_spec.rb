# == Schema Information
#
# Table name: entities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Entity, type: :model do
  let(:entity) { FactoryGirl.build(:entity) }

  subject { entity }

  it { should respond_to(:name) }

  context 'associations' do
    it { should have_many(:features).dependent(:destroy) }
  end

  context 'validations' do
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive }

    describe 'when name is not present' do
      before { entity.name = ' ' }
      it { should_not be_valid }
    end

    #describe 'trims spaces before validation' do
    #  before { entity.name = '    Valid Entity name       ' }
    #  it { expect(entity).to be_valid }
    #  it { expect(entity.name).to eq('Valid Entity name') }
    #end
  end

end
