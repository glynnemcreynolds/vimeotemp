10.times do
  @share = Share.create!(
    uid: Faker::Alphanumeric.alphanumeric(number: 8),
    video_code: '350958068'
  )
end
