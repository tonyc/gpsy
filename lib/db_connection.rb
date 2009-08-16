DataMapper::Logger.new(App::Config[:log_file], App::Config[:log_level])
DataMapper.setup(:default, YAML::load(IO.read(App::Config[:db_config])))
