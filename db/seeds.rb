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
apple = Product.create(name: 'apple', image: 'https://banner2.kisspng.com/20171219/9ca/apple-png-5a38db4c51f685.1538687515136755963357.jpg', quantity: 10, catID: fruite.id)



vigi = Category.create(name: 'vigi')
lettuce = Product.create(name: 'lettuce', image: 'https://banner2.kisspng.com/20180328/qwe/kisspng-lettuce-sandwich-butterhead-lettuce-vegetable-sala-lettuce-5abb79e2ca0f80.4373410515222358748277.jpg', quantity: 15, catID: vigi.id)
