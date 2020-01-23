# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Item.destroy_all

u1 = User.create({
    name: "dom", 
    password: "asdf", 
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI06q_9-ugl4CfaG_uBPOi1vYnOgVW1IFBgzKbyv3VN1LRYEiTwQ&s"
})
u2 = User.create({
    name: "imade", 
    password: "asdf", 
    picture: "https://d2g8igdw686xgo.cloudfront.net/44306886_1577285327338940_r.jpeg"
})
u3 = User.create({
    name: "ignacious pennybottom", 
    password: "asdf", 
    picture: "https://listverse.com/wp-content/uploads/2019/11/hipster.jpg"
})
u4 = User.create({
    name: "Tristan", 
    password: "asdf", 
    picture: "https://media-exp1.licdn.com/dms/image/C4D03AQH6egCE2x7Baw/profile-displayphoto-shrink_200_200/0?e=1584576000&v=beta&t=Yvb3ifdmbhd06XXmrAoupa6uHoE5NWI9LV18a1p5qqo"
})
u5 = User.create({
    name: "Frank",
    password: "asdf",
    picture: "https://www.utrgv.edu/som/surgery/_files/images/profile-pics/gerold-frank.jpg"
})
u6 = User.create({
    name: "FanZhong", 
    password: "asdf",
    picture: "https://avatars2.githubusercontent.com/u/10819970?s=460&v=4"
})






i1 = Item.create({
    name: "Artisanal Ice",
    price: 5.00, 
    picture: "https://img.grouponcdn.com/seocms/kkzUERq83gBf4e5f5zNhmi/Just_Ice_hero_600x390-600x390.jpeg"
})

i2 = Item.create({
    name: 'Vintage Hip Sachel', 
    price: 100.00, 
    picture: "https://images-na.ssl-images-amazon.com/images/I/61enMjomB5L._SY550_.jpg"
})

i3 = Item.create({
    name: "Mustache Wax", 
    price: 20.00,
    picture: "https://images-na.ssl-images-amazon.com/images/I/71gam7mXv%2BL._SY355_.jpg"
})

i4 = Item.create({
    name: "Seasonal Perserves Recepticle",
    price: 10.00,
    picture: "https://target.scene7.com/is/image/Target/GUEST_6da2d695-d402-40d2-8964-f3d6fdd150b9?wid=488&hei=488&fmt=pjpeg"
})

i5 = Item.create({
    name: "Authentic Puritan Butter Churn",
    price: 150.00,
    picture: "https://cdn.shopify.com/s/files/1/0050/1275/0447/products/bc-870_6097c58c-f112-4591-885a-e1e015df80f3_shopify_800x.jpg?v=1571714803"
})

i6 = Item.create({
    name: "imported traditional japanese coffee maker",
    price: 400.00,
    picture: "http://www.oasiscoffeespot.com/wp-content/uploads/2018/10/KyotoDrip.png"
})

i7 = Item.create({
    name: "Turn of the Century Penny-Farthing Bicycle",
    price: 300.00,
    picture: "https://i.pinimg.com/originals/65/62/33/656233f4f324f769a66a7dd8b4d3b5e2.jpg"
})

i8 = Item.create({
    name: "Reclaimed Wood Coffee Table",
    price: 200.00,
    picture: "https://i.etsystatic.com/9532249/r/il/997d84/1848990515/il_570xN.1848990515_s6fj.jpg"
})

i9 = Item.create({
    name: "Egyptian Canonical Sundial",
    price: 150.00,
    picture: "https://i.ebayimg.com/images/g/IYUAAOSwHLNZPsfU/s-l400.jpg"
})

i10 = Item.create({
    name: "Leather Warrior Hair Wrap for the Gentlemen's Manbun",
    price: 20.00,
    picture: "https://i.etsystatic.com/12796248/r/il/dca346/1645628813/il_794xN.1645628813_kstd.jpg"
})

i11 = Item.create({
    name: "washroom safety floatation device",
    price: 5.00,
    picture: "https://images-na.ssl-images-amazon.com/images/I/51-JQx6aE6L._AC_SX425_.jpg"
})