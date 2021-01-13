class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        # （パスワードの正確性を検証）,（ユーザ登録や編集、削除）
        # （パスワードをリセット）,（ログイン情報を保存）,（emailのフォーマットなどのバリデーション）
  has_many :post_images, dependent: :destroy
  # user<postimage で関連付ける
  has_many :post_comments, dependent: :destroy
  # user<favorite　で関連付ける
  has_many :favorites, dependent: :destroy
  attachment :profile_image
end
