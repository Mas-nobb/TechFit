class Course < ApplicationRecord
  has_one_attached :image
  has_many :lessons, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
