class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :commenter, presence: true, length: { minimum: 3 }
  validates :comment, presence: true, length: { minimum: 5 }
  validates :user_id, presence: true
  validates :post_id, presence: true 
end