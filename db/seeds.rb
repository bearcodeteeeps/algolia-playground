# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def this_many
  ENV.fetch('USERS', 100).to_i
end

Post.clear_index!

this_many.times do |user_number|
	user_number = user_number + User.count
	User.find_or_initialize_by(email: "sample#{user_number}@user.com").tap do |user|
		user.password = 'sampleuser'
		user.password_confirmation = 'sampleuser'
		(1..5).each { |post| user.posts.build(title: "title-#{post}", body: "This time i wrote #{post}", published: [true, false].sample) }
		user.save
	end
end
