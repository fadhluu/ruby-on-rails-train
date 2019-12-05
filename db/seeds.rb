# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.create(
  [
    { article_id: 2, user_is: 1, content: 'test123', status: 'aaa' },
    { article_id: 2, user_is: 1, content: 'wadu2222', status: 'aaa' }
  ]
)
