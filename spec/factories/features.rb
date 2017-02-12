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

FactoryGirl.define do
  factory :feature do
    name { FFaker::Lorem.words }
    entity
  end
end
