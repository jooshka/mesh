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

FactoryGirl.define do
  factory :subject do
    association :creator, factory: :user
    entity
  end
end
