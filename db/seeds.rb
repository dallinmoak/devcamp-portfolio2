# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "Post \##{blog +1}",
    body: "Lorem ipsum #{blog +1} dolor sit amet, consectetur adipiscing elit. Quisque nec iaculis magna. Aenean congue varius leo. Curabitur non enim non massa aliquet consequat. Quisque tellus purus, eleifend at elementum vehicula, tristique non ex. Cras consectetur est ac metus fringilla sagittis. Curabitur ullamcorper ac eros non vestibulum. Donec justo nisl, suscipit at dapibus eu, posuere at lorem. Phasellus non venenatis metus. Nam volutpat, purus sit amet feugiat porta, lectus urna sollicitudin massa, vestibulum fermentum diam enim nec nisi.",
    topic_id: Topic.last.id
  )
end
puts "10 seed blogs created"

5.times do |skill|
  Skill.create!(
    title: "skill #{skill+1}",
    percent_used: 20
  )
end
puts "5 seed skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Porfolio Item \##{portfolio_item+1}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum #{portfolio_item+1} dolor sit amet, consectetur adipiscing elit. Quisque nec iaculis magna. Aenean congue varius leo. Curabitur non enim non massa aliquet consequat. Quisque tellus purus, eleifend at elementum vehicula, tristique non ex. Cras consectetur est ac metus fringilla sagittis. Curabitur ullamcorper ac eros non vestibulum. Donec justo nisl, suscipit at dapibus eu, posuere at lorem. Phasellus non venenatis metus. Nam volutpat, purus sit amet feugiat porta, lectus urna sollicitudin massa, vestibulum fermentum diam enim nec nisi.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/300x200"
  )
end

Portfolio.create!(
  title: "Portfolio Item 9",
  subtitle: "Angular",
  body: "Lorem ipsum 9 dolor sit amet, consectetur adipiscing elit. Quisque nec iaculis magna. Aenean congue varius leo. Curabitur non enim non massa aliquet consequat. Quisque tellus purus, eleifend at elementum vehicula, tristique non ex. Cras consectetur est ac metus fringilla sagittis. Curabitur ullamcorper ac eros non vestibulum. Donec justo nisl, suscipit at dapibus eu, posuere at lorem. Phasellus non venenatis metus. Nam volutpat, purus sit amet feugiat porta, lectus urna sollicitudin massa, vestibulum fermentum diam enim nec nisi.",
  main_image: "http://placehold.it/600x400",
  thumb_image: "http://placehold.it/300x200"
)

puts "9 portfolio items created"


3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "technology #{technology}"
  )
end

puts '3 technologies created'

User.create!(
  name:"Dallin Moak", 
  email:"a@b.c", 
  password:"asdfasdf", 
  password_confirmation:"asdfasdf", 
  role:"site_admin"
  )
puts "1 admin created"

User.create!(
  email: "a@a.c",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"
