class Comment < ApplicationRecord
  validates :author,
    presence: true
  validates :content,
    presence: true,
    length: { in: 1..140 }
  belongs_to :gossip
end
