class GPSFix
  include DataMapper::Resource
  
  property :altitute, Float
  property :longitude, Float
  property :latitude, Float
  
  property :timestamp, String
end

