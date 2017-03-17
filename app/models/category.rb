class Category < ApplicationRecord
  validates :category_name, presence: true
  validates :category_name, uniqueness: true

  has_many :categorized_posts
  has_many :posts, through: :categorized_posts
end
