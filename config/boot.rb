$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'rubygems'
require 'extlib'
require 'dm-core'
require 'dm-aggregates'

require 'app'
require 'app_config'

Dir["#{App.root}/app/models/*.rb"].sort.each { |f| require f }
