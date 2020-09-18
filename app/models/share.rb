class Share < ApplicationRecord
  before_validation :set_uid

  validates :video_code, presence: true
  validates :uid, presence: true, uniqueness: true, length: { is: 8 }

  def to_parm
    uid
  end

  private

  def set_uid
    loop do
      self.uid = SecureRandom.alphanumeric(8)
      break unless Share.exists?(uid: uid)
    end
  end
end
