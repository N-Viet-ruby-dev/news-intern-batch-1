20.times do |n|
  name = Faker::Name.name
  Category.create!(name: name)
end

20.times do |n|
  User.create!(
    name:  Faker::Name.name,
    birthday: Faker::Date.birthday(18, 65),
    address: Faker::Address.full_address,
    email: Faker::Internet.email,
    role:"user",
    password: "password")
end
