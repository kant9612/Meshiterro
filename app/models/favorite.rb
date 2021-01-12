class Favorite < ApplicationRecord
  # favorite>user で関連付け
  belongs_to :user
  # favorite>postimage で関連付け
  belongs_to :post_image
end
