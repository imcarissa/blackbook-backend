# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group = Group.create(name: 'Flatiron cohort', category: 'school', description: 'coding classmates', img_url: '')
group = Group.create(name: 'Tinder Adventures', category: 'dating', description: 'dates', img_url: '')

contact = Contact.create(group_id: 1, name: 'Jennifer P', email: 'jennifer.pazos@flatiron.com', phone_number: '111', notes: 'cohort lead')
contact = Contact.create(group_id: 2, name: 'Ryan Reynolds', email: 'vancityreynolds@email.com', phone_number: '777', notes: '2 dates. met on Bumble. Fear of open water')
contact = Contact.create(group_id: 2, name: 'Ashton Kutcher', email: 'callmekootch@email.com', phone_number: '222', notes: 'future first husband material.')
contact = Contact.create(group_id: 2, name: 'RDJ', email: 'ironman@avengers.com', phone_number: '999', notes: 'sugar daddy candidate')