module App
  class << self
    def root
      @root ||= File.expand_path(File.join(File.dirname(__FILE__), "..")).freeze
    end
    
    def setup_database_connection!
      DataMapper::Logger.new(App::Config[:log_file], App::Config[:log_level])
      DataMapper.setup(:default, YAML::load_file(App::Config[:db_config]))
    end
  end
end
