class Share < ApplicationRecord
  before_validation :set_uid

  extend FriendlyId
  friendly_id :uid, use: :slugged

  validates :video_code, presence: true
  validates :uid, presence: true, uniqueness: true, length: { is: 8 }

  private

  def set_uid
    uid = SecureRandom.alphanumeric(8)
    loop do
      uid = SecureRandom.alphanumeric(8)
      break unless self.class.exists?(uid: uid.downcase)
    end
    self.uid = uid.downcase
  end
end
