require 'faker'

User.create(
  email:'test@test.fr',
  password:'password'
)

User.create(
  email:'test@test2.fr',
  password:'password2'
)

10.times do
  Article.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user_id: User.all.sample.id,
    private: rand < 0.5 
  )
end

30.times do
  Comment.create(
    content: Faker::Lorem.paragraph,
    user_id: User.all.sample.id,
    article_id: Article.all.sample.id
  )
end