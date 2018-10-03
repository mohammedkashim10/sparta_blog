class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :presence => true
  validates :body, :presence => true
  # validates :body, length: {maximum: 240}
  validates :image, :presence => true
end
