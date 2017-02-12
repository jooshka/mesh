# == Schema Information
#
# Table name: sorts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :sort do
    name { FFaker::Lorem.words }
  end
end
