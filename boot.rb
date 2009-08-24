$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'rubygems'

require 'sinatra'

# app dependencies
require 'dm-core'
require 'dm-aggregates'
require 'dm-validations'
require 'dm-timestamps'

require 'app'


# This is the slow way of loading models
Dir["#{App.root}/app/models/*.rb"].sort.each { |f| require f }


App.setup_database_connection!

get '/' do
  erb :index
  # GpsFix.count.to_s
end