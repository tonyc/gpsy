require 'dm-core'
require 'dm-aggregates'

DataMapper::Logger.new(App::Config[:log_file], App::Config[:log_level])
DataMapper.setup(:default, YAML::load_file(App::Config[:db_config]))
