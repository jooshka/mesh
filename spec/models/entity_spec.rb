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

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should be_valid }
    describe "when name is not present" do
      before { entity.name = " " }
      it { should_not be_valid }
    end
  end

end
