# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


group = Group.create(name: 'Flatiron cohort', about: 'coding classmates')
group = Group.create(name: 'Tinder Adventures', about: 'dates')
contact = Contact.create(group_id: 1, name: 'Prof. Snape', email: 'S.Snape@hogwarts.medu', phone_number: '1111', notes: 'Potions')
contact = Contact.create(group_id: 1, name: 'Mr. Rogers', email: 'F.Rogers@yourneighbor.com', phone_number: '1212', notes: 'Life coach')
contact = Contact.create(group_id: 1, name: 'Jennifer P', email: 'jennifer.pazos@flatiron.com', phone_number: '2222', notes: 'cohort lead')
contact = Contact.create(group_id: 2, name: 'Ryan Reynolds', email: 'vancityreynolds@email.com', phone_number: '7777', notes: '2 dates. met on Bumble. Fear of open water')
contact = Contact.create(group_id: 2, name: 'Ashton Kutcher', email: 'callmekootch@email.com', phone_number: '1212', notes: 'future first husband material.')
contact = Contact.create(group_id: 2, name: 'RDJ', email: 'lessthanhero@theavengers.com', phone_number: '867539', notes: 'sugar daddy candidate')