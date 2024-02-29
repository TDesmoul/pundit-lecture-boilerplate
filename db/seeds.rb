Restaurant.destroy_all
User.destroy_all

bob = User.create!(email: "bob@mail.com", password: "123456")
jim = User.create!(email: "jim@mail.com", password: "123456")
admin = User.create!(email: "admin@mail.com", password: "123456", admin: true)

bob.restaurants.create!(name: "Baby Love Burger", status: "published")
jim.restaurants.create!(name: "Chinese Kebab", status: "published")
bob.restaurants.create!(name: "Hello World Restaurant", status: "pending")
jim.restaurants.create!(name: "La Fourchette du printemps", status: "published")
jim.restaurants.create!(name: "Surpriz", status: "archived")

