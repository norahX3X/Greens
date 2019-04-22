# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Category.destroy_all


fruite = Category.create(name: 'fruite')

apple = Product.create(name: 'apple', image: 'https://banner2.kisspng.com/20171219/9ca/apple-png-5a38db4c51f685.1538687515136755963357.jpg', quantity: 10, category_id: fruite.id)
ProductInfo.create(product_id: apple.id, price: 5.0,stack: 5 , seller_id:1)



vigi = Category.create(name: 'vigi')
lettuce = Product.create(name: 'lettuce', image: 'https://banner2.kisspng.com/20180328/qwe/kisspng-lettuce-sandwich-butterhead-lettuce-vegetable-sala-lettuce-5abb79e2ca0f80.4373410515222358748277.jpg', quantity: 15, category_id: vigi.id)


shippingAdd = ShippingInfo.create(user_id: 1, zip: 11543, adress:" najah al izz - Al Olaya " ,city: "Riyadh", phone_num: "0550585468" )
order =Order.create(user_id: 1, total: 23.5 , quantity: 4 , shipping_id: shippingAdd.id )
OrderDetail.create(order_id: order.id , product_id: 1, price:12.5 , amount: 1 )
OrderDetail.create(order_id: order.id , product_id: 2, price:0.5 , amount: 1 )
OrderDetail.create(order_id: order.id , product_id: 3, price:30.5 , amount: 1 )
OrderDetail.create(order_id: order.id , product_id: 4, price:4.5 , amount: 1 )
