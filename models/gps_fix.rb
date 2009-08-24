class GpsFix
  include DataMapper::Resource
  
  property :altitute, Float
  property :longitude, Float
  property :latitude, Float
  property :course, Float
  property :speed, Float
  property :timestamp, Float
end

