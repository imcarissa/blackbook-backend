# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Wishlist.create(name: 'office', description: 'desk furniture and dream set up')
Wishlist.create(name: 'skincare', description: 'skincare products')


Item.create(wishlist_id: 1, name: 'monitor', content: 'concave wide-length monitor')
Item.create(wishlist_id: 1, name: 'desk chair', content: 'Google-office style desk chair')
Item.create(wishlist_id: 1, name: 'Sailor Moon mousepad', content: 'on Amazon')
Item.create(wishlist_id: 2, name: 'Tata Harper', content: 'natural green skincare line')
Item.create(wishlist_id: 2, name: 'Darphin', content: 'eye cream and serum')
