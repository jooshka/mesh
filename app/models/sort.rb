# == Schema Information
#
# Table name: sorts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sort < ApplicationRecord
  has_many :entities, dependent: :destroy, inverse_of: :sort

  validates :name,
            presence: true,
            uniqueness: { case_sensitive: false }

  accepts_nested_attributes_for :entities, allow_destroy: true

  before_validation do
    name.try(:strip!)
  end

end
