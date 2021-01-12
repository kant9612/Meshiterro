class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image
  # postimage<postcomment で関連付ける
  has_many :post_comments, dependent: :destroy
end
