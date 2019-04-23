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


apple = Product.create(name: 'apple', image: 'https://banner2.kisspng.com/20171219/9ca/apple-png-5a38db4c51f685.1538687515136755963357.jpg', quantity: "10", category_id: fruite.id, stack: 10, price: 20.9 , farm: "مزرعه الحمد", description: "مرره لذيذ")
orange = Product.create(name: 'orange', image: 'https://www.rd.com/wp-content/uploads/2017/12/01_oranges_Finally%E2%80%94Here%E2%80%99s-Which-%E2%80%9COrange%E2%80%9D-Came-First-the-Color-or-the-Fruit_691064353_Lucky-Business-1024x683.jpg', quantity: 7, category_id: fruite.id, stack: 5, price: 10.9 , farm: "مزرعه الحمد", description: "مرره لذيذ")
banana = Product.create(name: 'banana', image: 'https://www.organicfacts.net/wp-content/uploads/banana.jpg', quantity: 7, category_id: fruite.id, stack: 3, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")




Vegetables = Category.create(name: 'Vegetables')

carrot = Product.create(name: 'carrot', image: 'https://www.organicfacts.net/wp-content/uploads/storecarrots.jpg', quantity: 6, category_id: Vegetables.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")
lettuce = Product.create(name: 'lettuce', image: 'https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzEwMy8wMDkvb3JpZ2luYWwvcm9tYWluZS1sZXR0dWNlLU5PLVJFVVNFLmpwZw==', quantity: 4, category_id: vigi.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")
tomato = Product.create(name: 'tomato', image: 'https://cdn-images-1.medium.com/max/1600/1*utOmkc67LDksWHdUZhrMrw.jpeg', quantity: 4, category_id: Vegetables.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")


dairyـproduct = Category.create(name: 'dairyـproduct')
Yogurt = Product.create(name: 'Yogurt', image: 'https://healthfirstnetwork.ca/wp-content/uploads/2016/05/5a_blog_prime_genuinehealth.jpg', quantity: 4, category_id: dairyـproduct.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")
milk = Product.create(name: 'milk', image: 'https://img.taste.com.au/5VamxIAS/taste/2016/11/almond-milk-109280-1.jpeg', quantity: 4, category_id: dairyـproduct.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")
laban = Product.create(name: 'laban', image: 'https://i1.wp.com/www.akitcheninistanbul.com/wp-content/uploads/2017/01/Ayran-2-of-3.jpg?resize=1000,1333', quantity: 4, category_id: dairyـproduct.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")


seed = Category.create(name: 'seed')
Wheat = Product.create(name: 'Wheat', image: 'https://1.bp.blogspot.com/-swVY1zLmOtY/W20Xynh07iI/AAAAAAAAEns/0a4Kv8XSE3E-Jd4P2e1C8s-VJJXkEFfuQCLcBGAs/s1600/%25D8%25AA%25D9%2581%25D8%25B3%25D9%258A%25D8%25B1%2B%25D8%25AD%25D9%2584%25D9%2585%2B%25D8%25B1%25D8%25A4%25D9%258A%25D8%25A9%2B%25D8%25B3%25D9%2586%25D8%25A7%25D8%25A8%25D9%2584%2B%25D9%2588%25D8%25AD%25D8%25A8%25D9%2588%25D8%25A8%2B%25D8%25A7%25D9%2584%25D9%2582%25D9%2585%25D8%25AD%2B%25D9%2581%25D9%2589%2B%25D8%25A7%25D9%2584%25D9%2585%25D9%2586%25D8%25A7%25D9%2585%2B%25D9%2584%25D8%25A7%25D8%25A8%25D9%2586%2B%25D8%25B3%25D9%258A%25D8%25B1%25D9%258A%25D9%2586.jpg', quantity: 4, category_id: seed.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")
Oats = Product.create(name: 'Oats', image: 'https://i.fatafeat.com/storage/attachments/21/27_nov_art2_196203_large.png', quantity: 4, category_id: seed.id,stack: 10, price: 20 , farm: "مزرعه الحمد", description: "مرره لذيذ")


shipping_add = ShippingInfo.create(user_id: 1, zip: 11543, adress:" najah al izz - Al Olaya " ,city: "Riyadh", phone_num: "0550585468" )

order =Order.create(user_id: 1, total: 23 , quantity: 4 , shipping_id: shipping_add.id )
OrderDetail.create(order_id: order.id , product_id: vigi.id , price:12.5 , amount: 1 )
OrderDetail.create(order_id: order.id , product_id: apple.id, price:0.5 , amount: 1 )
