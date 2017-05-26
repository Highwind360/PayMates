unless User.count > 0
  User.create(
    firstname: "Super",
    lastname: "User",
    username: "admin",
    password: ENV["DEFAULT_ADMINISTRATOR_PASSWORD"],
    email: ENV["DEFAULT_ADMINISTRATOR_EMAIL"],
    phone_number: ENV["DEFAULT_ADMINISTRATOR_PHONE_NUMBER"]
  )
end
