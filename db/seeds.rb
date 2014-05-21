# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Interest.destroy_all

User.create([{ 
    username: 'johndoe', 
    email: 'john_doe@example.com',
    password_digest: '123456'
}])

Interest.create([{
    username: "jackdoe",
    email: "jack_doe@example.com"
}])