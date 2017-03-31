require 'random_data'

  75.times do
   Question.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph,
     resolved: false
   )
 end
# Create Posts
 50.times do
   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 Post.find_or_create_by!(
     title: "unique title",
     body: "unique body"
     )
     
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"