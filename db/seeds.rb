require 'faker'

User.create(
  email:'test@test.fr',
  password:'password'
)


10.times do
  Article.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user_id: User.all.sample.id
  )
end