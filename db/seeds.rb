User.destroy_all
Photo.destroy_all

15.times do |index|
  user = User.create!(email: Faker::Internet.email)
  3.times do |index|
    Photo.create!(url: "http://www.nybooks.com/wp-content/uploads/2010/05/picture-of-antichrist.jpg", title: Faker::Lorem.word, description: Faker::Lorem.sentence(20, false, 0).chop,
  user_id: user.id)
  end
  p "Created #{Photo.count} photos"
end
p "Created #{User.count} users"
