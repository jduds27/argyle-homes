User.create!(
  email: "test@test.com",
  password: "jason1",
  password_confirmation: "jason1",
  first_name: "Admin",
  last_name: "User",
  roles: "admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "jason1",
  password_confirmation: "jason1",
  first_name: "Regular",
  last_name: "User"
)
 puts "1 Regular User created"