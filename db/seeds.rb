# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create(
  [
    { title: 'Pencurian', content: 'Lorem ipsum blabla' },
    { title: 'Pencurian terjadi lagi', content: 'Lorem ipsum bla2x' }
  ]
)

Contact.create(
  [
    { sosmed: 'Instagram', sosmed_username: '@fadhluu' },
    { sosmed: 'Facebook', sosmed_username: 'Fadhlu Rahman' }
  ]
)
