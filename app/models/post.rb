class Post
  include DataMapper::Resource
  
  property :id, Serial
  property :created_at, DateTime
  property :body, Text
end