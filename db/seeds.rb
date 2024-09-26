user1 = User.create!(
  username: 'JohnDoe',
  email: 'john@example.com',
  password: 'password',
  license_front: 'license_front_img_1.jpg',
  license_back: 'license_back_img_1.jpg'
)

user2 = User.create!(
  username: 'JaneDoe',
  email: 'jane@example.com',
  password: 'password',
  license_front: 'license_front_img_2.jpg',
  license_back: 'license_back_img_2.jpg'
)

# Create motorbike types
sport = MotorbikeType.create!(name: "Yamaha MT-09", category: "Sport")
cruiser = MotorbikeType.create!(name: "Harley-Davidson Iron 883", category: "Cruiser")

# Create motorcycles and associate them with users
Motorcycle.create!(user: user1, motorbike_type: sport)
Motorcycle.create!(user: user2, motorbike_type: cruiser)