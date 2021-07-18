class Like < ApplicationRecord
  belongs_to :user
  belongs_to :food
  validates :user_id, uniqueness: {
    scope: :post_id,
    message: "は同じ投稿に２回以上いいね出来ません"
  }
end
