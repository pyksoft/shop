Photo.delete_all
Product.delete_all
OrderStatus.delete_all


photo1 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479126845/51cc77451754251cc774517925_mcrysr.jpg")
photo2 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479126845/coopers_pale_ale_bottles_375ml_k4fzfa.png")
photo3 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479126845/tim-tam_qioicv.jpg")
photo4 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479136853/KR845166_kraft_ky_kraft_vegemite_jar_400g_n_a_t0qwkk.jpg")
photo5 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479136853/192985.jpg.ebe601ef27c86feda2ac324db7dc4e7b_uyy34a.jpg")
photo6 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479136853/Gourmet-Game_Herb-Garlic-Kangaroo-Steak1_ibvzwv.jpg")

product1 = Product.create(name:"Coopers gift set", price: "12.99", photos: [photo1])
product2 = Product.create(name:"Coopers Pale Ale", price: "4.99", photos: [photo2])
product3 = Product.create(name:"Tim Tams", price: "5.99", photos: [photo3])
product4 = Product.create(name:"Vegemite", price: "8.99", photos: [photo4])
product5 = Product.create(name:"Milo", price: "19.99", photos: [photo5])
product6 = Product.create(name:"Frozen Kangaroo Steak", price: "21.99", photos: [photo6])

OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
