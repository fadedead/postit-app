class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :categories, through: :post_categories
  has_many :post_categories

  validates :title, length: {minimum: 10}
  validates :url, presence: true
  validates :description, length: {minimum: 25}
end