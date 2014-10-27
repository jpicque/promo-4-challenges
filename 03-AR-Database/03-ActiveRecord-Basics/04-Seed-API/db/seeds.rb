require "json"
require "rest-client"
# TODO: Write a seed to insert 100 posts in the database fetched from the Hacker News API.

table_data = RestClient.get 'https://hacker-news.firebaseio.com/v0/topstories.json'
table_data = JSON.parse(table_data)

table_data_top = table_data[0..10]
p table_data_top

table_data_top.each do |id|
  a =  RestClient.get 'http://api.ihackernews.com/post/#{id}.json'
  p a
  b = JSON.parse(a)
  p b
  post = Post.new(name: b[:title], url: b[:url], votes: b[:votes])
  post.save
end