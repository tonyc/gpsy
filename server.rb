#!/usr/bin/env ruby -rubygems

require(File.join(File.dirname(__FILE__), 'config', 'boot'))
require 'sinatra'

App.setup_database_connection!

get '/' do
  @fix_count = GpsFix.count
  erb :index
end