10.times do
  @share = Share.create!(
    identifier: Faker::Alphanumeric.alphanumeric(number: 8),
    video_code: '1234567'
  )
end
