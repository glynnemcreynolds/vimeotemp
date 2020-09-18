class Share < ApplicationRecord
  before_validation :set_uid, on: :create

  validates :video_code, presence: true
  validates :uid, presence: true, uniqueness: true, length: { is: 8 }
  validates :duration, presence: true

  def to_parm
    uid
  end

  def valid_json?
    !!JSON.parse(
      Net::HTTP.get(
        URI("https://vimeo.com/api/oembed.json?url=https://vimeo.com/#{video_code}")
      )
    )
  rescue JSON::ParserError
    false
  end

  def parsed_json
    JSON.parse(
      Net::HTTP.get(
        URI("https://vimeo.com/api/oembed.json?url=https://vimeo.com/#{video_code}")
      )
    )
  end

  def embed_code
    parsed_json['html']
  end

  def expired?
    ((Time.current - created_at) / 1.hour) > duration
  end

  private

  def set_uid
    loop do
      self.uid = SecureRandom.alphanumeric(8)
      break unless Share.exists?(uid: uid)
    end
  end
end
