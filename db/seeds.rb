require 'faker'

10.times do
  User.create({
    :name           => Faker::Name.name,
    :email          => Faker::Internet.safe_email,
    :password_hash  => 'password'
  })
end

30.times do
  Question.create({
    :title    => Faker::Lorem.sentence,
    :content  => Faker::Lorem.paragraph,
    :user_id  => rand(1..10)
  })
end

100.times do
  Answer.create({
    :question_id  => rand(1..30),
    :content      => Faker::Lorem.paragraph,
    :user_id      => rand(1..10)
  })
end
