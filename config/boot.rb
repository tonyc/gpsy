$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

# app dependencies
require 'dm-core'
require 'dm-aggregates'
require 'dm-validations'
require 'dm-timestamps'

require 'app'

# This is the slow way of loading models
Dir["#{App.root}/models/*.rb"].sort.each { |f| require f }
