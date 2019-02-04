class Gossip < ApplicationRecord
  validates :title,
    presence: true
  validates :content,
    presence: true,
    length: { in: 1..140 }
  validates :user_id,
    presence: true
  belongs_to :user
end
