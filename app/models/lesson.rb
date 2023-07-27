class Lesson < ApplicationRecord
  belongs_to :course
  has_one_attached :video

  validates :title, presence: true
  validates :video, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
