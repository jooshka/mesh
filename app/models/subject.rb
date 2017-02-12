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

class Subject < ApplicationRecord
  belongs_to :entity
  belongs_to :creator, class_name: 'User'

  validates :entity, presence: true
  validates :creator, presence: true
end
