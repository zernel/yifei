class Reply < ApplicationRecord
  belongs_to :topic
  belongs_to :user

  validates :topic, presence: true
  validates :user, presence: true
  validates :content, presence: true

  default_scope -> { order("created_at DESC") }
end
