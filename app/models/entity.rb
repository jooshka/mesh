# == Schema Information
#
# Table name: entities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Entity < ApplicationRecord
  has_many :features, dependent: :destroy

  accepts_nested_attributes_for :features, allow_destroy: true

  validates :name,
            presence: true,
            uniqueness: {case_sensitive: false}

  before_validation do
    name.try(:strip!)
  end
end
