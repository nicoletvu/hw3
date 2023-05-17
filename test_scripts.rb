posts = Post.all

for post in posts
  puts "#{post["place_id"]}"
end