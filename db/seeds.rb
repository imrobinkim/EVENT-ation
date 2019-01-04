# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rkim = User.create(username: "rkim", first_name: "Robin", last_name: "Kim", points: 0)
# alee = User.create(username: "alee", first_name: "Amy", last_name: "Lee", points: 0)
# middletown = City.create(name: "Middletown")
# baking = Interest.create(name: "baking")
# bakeoff = Event.create(name: "Bakeoff", host: alee, interest: baking, city: middletown)
# EventUser.create(event: bakeoff, guest: rkim)

User.destroy_all
Interest.destroy_all
Event.destroy_all
EventsGuest.destroy_all

rkim = User.create(username: "rkim", name: "Robin Kim", email: "rkim@gmail.com", password: "blah", points: 0, age: 24)
jbenjamin = User.create(username: "jbenjamin", name: "Jonnel Benjamin", email: "jbenj@gmail.com", password: "hey", points: 0, age: 23)
reading = Interest.create(name: "Reading")
baking = Interest.create(name: "Baking")
bakeoff = Event.create(name: "Bake Off", address: "234 Good Ave", datetime: DateTime.now, points: 5, host: rkim, interest: baking)
readingnight = Event.create(name: "Reading Night", address: "45 Pennsylvania Ave", host: jbenjamin, interest: reading)
eventsguests1 = EventsGuest.create(event: bakeoff, guest: jbenjamin)
eventsguests2 = EventsGuest.create(event: readingnight, guest: rkim)
