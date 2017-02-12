# == Schema Information
#
# Table name: entities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sort_id    :integer
#

FactoryGirl.define do
  factory :entity do
    name { FFaker::Lorem.words }
  end
end
