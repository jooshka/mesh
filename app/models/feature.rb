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

class Feature < ApplicationRecord
  belongs_to :entity

  validates :name,
            presence: true,
            uniqueness: { scope: :entity_id, case_sensitive: false }

  validates :entity, presence: true

  before_validation do
    name.try(:strip!)
  end

end
