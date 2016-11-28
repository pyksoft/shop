Photo.delete_all
Product.delete_all
OrderStatus.delete_all


photo1 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479988443/Coopers_yqavsl.png")
photo2 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479126845/coopers_pale_ale_bottles_375ml_k4fzfa.png")
photo3 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479988442/Timtam_mwetsq.png")
photo4 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479988447/Vegemite_ln2e45.png")
photo5 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479988445/Milo_vhi8el.png")
photo6 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479988445/kangaroo_sbipre.png")

product1 = Product.create(name:"Coopers gift set", price: "12.99", photos: [photo1])
product2 = Product.create(name:"Coopers Pale Ale", price: "4.99", photos: [photo2])
product3 = Product.create(name:"Tim Tams", price: "5.99", photos: [photo3])
product4 = Product.create(name:"Vegemite", price: "8.99", photos: [photo4])
product5 = Product.create(name:"Milo", price: "19.99", photos: [photo5])
product6 = Product.create(name:"Kangaroo Steak", price: "21.99", photos: [photo6])

OrderStatus.create! name: "In Progress"
OrderStatus.create! name: "Placed"
OrderStatus.create! name: "Shipped"
OrderStatus.create! name: "Cancelled"
