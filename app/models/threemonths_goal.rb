class ThreemonthsGoal < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: true    #一意性（かぶらないようにしたいとき）
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true    #空の値ではないこと
  validates :content, presence: true, length: { maximum: 140 }
end
