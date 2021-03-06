# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({name:"Claudio", last_name:"Alvarez", email:"calvarez@miuandes.cl", phone:123421341, password:123456, address:"area51"})
User.create({name:"Mapi", last_name:"Mapi", email:"mapi@miuandes.cl", phone:1238102938123, password:"mapi", address:"mapidireccion"})
User.create({name:"Ignacio", last_name:"Figueroa", email:"ijfigueroa@miuandes.cl", phone:345678, password:123456, address:"ignacioaddress"})
User.create({name:"JoseLuis", last_name:"Assadi", email:"assadi@miuandes.cl", phone:123421341, password:123456, address:"assadishouse"})
User.create({name:"alf", last_name:"alf", email:"alf@miuandes.cl", phone:123421341, password:123456, address:"alfshouse"})
EventVenue.create({name:"venue01", address:"address01", capacity:5})
EventVenue.create({name:"venue02", address:"address02", capacity:6})
EventVenue.create({name:"venue03", address:"address03", capacity:7})
Event.create({name:"event01", description:"description01",date:DateTime.now+100, event_venue_id:1 })
Event.create({name:"event02", description:"description02",date:DateTime.now+1000, event_venue_id:2 })
Event.create({name:"event03", description:"description03",date:DateTime.now+10000, event_venue_id:3 })
Category.create({name:"Pacifico"})
Category.create({name:"Andes"})
Category.create({name:"Galucha"})
Order.create(user_id:1, total:6)
Order.create(user_id:2, total:7)
Order.create(user_id:3, total:8)
Order.create(user_id:4, total:7)
Order.create(user_id:5, total:6)
Ticket.create({price:1, category_id:1, event_id:1, order_id:1})
Ticket.create({price:2, category_id:2, event_id:2, order_id:1})
Ticket.create({price:3, category_id:3, event_id:3, order_id:1})

Ticket.create({price:3, category_id:3, event_id:1, order_id:2})
Ticket.create({price:1, category_id:1, event_id:2, order_id:2})
Ticket.create({price:2, category_id:2, event_id:3, order_id:2})

Ticket.create({price:2, category_id:2, event_id:1, order_id:3})
Ticket.create({price:3, category_id:3, event_id:2, order_id:3})
Ticket.create({price:1, category_id:1, event_id:3, order_id:3})

Ticket.create({price:3, category_id:3, event_id:1, order_id:4})
Ticket.create({price:1, category_id:1, event_id:2, order_id:4})
Ticket.create({price:2, category_id:2, event_id:3, order_id:4})

Ticket.create({price:1, category_id:1, event_id:1, order_id:5})
Ticket.create({price:2, category_id:2, event_id:2, order_id:5})
Ticket.create({price:3, category_id:3, event_id:3, order_id:5})

Ticket.create({price:3, category_id:3, event_id:2, order_id:5})
