class Post
  include DataMapper::Resource
  
  property :id, Serial
  property :created_at, DateTime
  property :name, String, :limit => 50, :length => (1..50)
  property :body, Text
end