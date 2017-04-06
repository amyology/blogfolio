class Comment < ApplicationRecord
  validates :commenter, presence: true
  validates :email, presence: true
  validates :body, presence: true
  validates :post_id, presence: true

  belongs_to :post
end
