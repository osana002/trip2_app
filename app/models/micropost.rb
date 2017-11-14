class Micropost < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :spot_name, presence: true
  validates :spot_address, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
