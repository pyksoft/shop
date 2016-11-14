Photo.delete_all
Product.delete_all


photo1 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479126845/51cc77451754251cc774517925_mcrysr.jpg")
photo2 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479126845/coopers_pale_ale_bottles_375ml_k4fzfa.png")
photo3 = Photo.create(image: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479126845/tim-tam_qioicv.jpg")


product1 = Product.create(name:"Coopers gift set", price: "12.99", photos: [photo1])
product2 = Product.create(name:"Coopers Pale Ale", price: "4.99", photos: [photo2])
product3 = Product.create(name:"Tim Tams", price: "5.99", photos: [photo3])
