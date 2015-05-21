class PostCategory < ActiveRecord::Base
  has_many :posts
  has_many :categories
end