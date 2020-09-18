class Share < ApplicationRecord
  before_validation :set_uid

  validates :video_code, presence: true
  validates :uid, presence: true, uniqueness: true, length: { is: 8 }

  private

  def set_uid
    self.uid = SecureRandom.alphanumeric(8)
    loop do
      uid = SecureRandom.alphanumeric(8)
      break unless self.class.exists?(uid: uid)
    end
    self.uid = uid
  end
end
