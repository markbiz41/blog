# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(
  name: "alice", email: "alice44@gmail.com", password: "nicealice"
)

categories = []
categories << Category.create(
  name: Faker::Commerce.department
)
categories << Category.create(
  name: Faker::Commerce.department
)
categories << Category.create(
  name: Faker::Commerce.department
)

categories.each do |category|
  3.times do
    post = Post.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph,
      category: category,
      user: user
    )
    5.times do
      comment = Comment.create(
        content: Faker::Lorem.sentence,
        post: post,
        user: user
      )
    end
  end

end
