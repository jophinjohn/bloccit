# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
 
 # Create Posts
 50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
posts=Post.all
comments=Comment.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end
 if posts.find_by title: 'Jophinsposts', body: 'Thisisthefirstposts'
  puts "Cannot create unique post"
 else
   checkpost = Post.create!(
     title: "Jophinsposts",
     body: "Thisisthefirstposts"
   )
 end 

 
 if comments.find_by body: 'Thisisthefirstcomment'
   puts "Cannot create unique comment"
 else
   Comment.create!(
    post: checkpost,
    body: "Thisisthefirstcomment"
   ) 
 end
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"


