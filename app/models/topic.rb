class Topic < ApplicationRecord
  belongs_to :user
  has_many :replies

  validates :category, presence: true
  validates :title, presence: true
  validates :user, presence: true

  CATS = ["社区话题", "二手闲置", "租售相关", "社区求助"]
  ADMIN_CATS = ["投诉建议", "物业报修"]

  default_scope -> { order("created_at DESC") }
end
