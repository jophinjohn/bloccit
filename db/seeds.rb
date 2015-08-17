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
 posts = Post.all
 comments = Comment.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end
 if posts.any?{|item| item[:title]=="Jophin's post" && item[:body] == "Hello Jophin. This is your first post"}
   puts "Cannot create unique post"
 else
   checkpost = Post.create!(
     title: "Jophin's post",
     body: "Hello Jophin. This is your first post"
   )
 end 
 
 if comments.any?{|item| item[:post_id]== checkpost && item[:body] == "Hello Jophin. This is your first comment"}
   puts "Cannot create unique comment"
 else
   Comment.create!(
    post: checkpost,
    body: "Hello Jophin. This is your first comment"
   ) 
 end
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"