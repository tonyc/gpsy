$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'rubygems'

# app dependencies
require 'dm-core'
require 'dm-aggregates'
require 'dm-validations'

require 'app'

# This is the slow way of loading models
Dir["#{App.root}/app/models/*.rb"].sort.each { |f| require f }
