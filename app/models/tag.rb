class Tag < ApplicationRecord
  validates :tag_name, uniqueness: true

  has_many :tagged_posts
  has_many :posts, through: :tagged_posts
end
