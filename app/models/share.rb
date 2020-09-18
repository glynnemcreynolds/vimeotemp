class Share < ApplicationRecord
  validates :video_code, presence: true
  validates :identifier, presence: true, uniqueness: true, length: { is: 8 }
end
