class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image
  # postimage<postcomment で関連付ける
  has_many :post_comments, dependent: :destroy
  # postimage<favorite で関連付け
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
