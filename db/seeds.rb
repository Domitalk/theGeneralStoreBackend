# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Item.destroy_all

u1 = User.create({name: "dom"})
u2 = User.create({name: "imade"})
u3 = User.create({name: "ignacious pennybottom"})

i1 = Item.create({
    name: "artisanal ice",
    price: 5.00, 
    picture: "https://img.grouponcdn.com/seocms/kkzUERq83gBf4e5f5zNhmi/Just_Ice_hero_600x390-600x390.jpeg"
})

i2 = Item.create({
    name: 'vintage hip sachel', 
    price: 100.00, 
    picture: "https://images-na.ssl-images-amazon.com/images/I/61enMjomB5L._SY550_.jpg"
})

i3 = Item.create({
    name: "mustache wax", 
    price: 20.00,
    picture: "https://images-na.ssl-images-amazon.com/images/I/71gam7mXv%2BL._SY355_.jpg"
})

i4 = Item.create({
    name: "seasonal perserves recepticle",
    price: 10.00,
    picture: "https://target.scene7.com/is/image/Target/GUEST_6da2d695-d402-40d2-8964-f3d6fdd150b9?wid=488&hei=488&fmt=pjpeg"
})

i5 = Item.create({
    name: "authentic puritan butter churn",
    price: 150.00,
    picture: "https://cdn.shopify.com/s/files/1/0050/1275/0447/products/bc-870_6097c58c-f112-4591-885a-e1e015df80f3_shopify_800x.jpg?v=1571714803"
})

i6 = Item.create({
    name: "imported traditional japanese coffee maker",
    price: 400.00,
    picture: "http://www.oasiscoffeespot.com/wp-content/uploads/2018/10/KyotoDrip.png"
})

i7 = Item.create({
    name: "turn of the century penny-farthing bicycle",
    price: 300.00,
    picture: "https://i.pinimg.com/originals/65/62/33/656233f4f324f769a66a7dd8b4d3b5e2.jpg"
})

i8 = Item.create({
    name: "reclaimed wood coffee table",
    price: 200.00,
    picture: "https://i.etsystatic.com/9532249/r/il/997d84/1848990515/il_570xN.1848990515_s6fj.jpg"
})

i9 = Item.create({
    name: "egyptian canonical sundial",
    price: 150.00,
    picture: "https://i.ebayimg.com/images/g/IYUAAOSwHLNZPsfU/s-l400.jpg"
})

i10 = Item.create({
    name: "leather warrior hair wrap for the gentlemen's manbun",
    price: 20.00,
    picture: "https://i.etsystatic.com/12796248/r/il/dca346/1645628813/il_794xN.1645628813_kstd.jpg"
})