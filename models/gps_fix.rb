class GpsFix
  include DataMapper::Resource
  
  property :id, Serial
  
  property :altitude, Float
  property :longitude, Float
  property :latitude, Float
  property :course, Float
  property :speed, Float
  property :timestamp, DateTime
end

