# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

order =Order.create(userID: 1, total: 23.5 , quantity: 4 , shippingID: 1)
OrderDetail.create(orderID: order.id , productID: 1, price:12.5 , amount: 1 )
OrderDetail.create(orderID: order.id , productID: 2, price:0.5 , amount: 1 )
OrderDetail.create(orderID: order.id , productID: 3, price:30.5 , amount: 1 )
OrderDetail.create(orderID: order.id , productID: 4, price:4.5 , amount: 1 )
