module App
  class << self
    
    def env
      ENV['APP_ENV'] || 'development'
    end
    
    alias_method :environment, :env
    
    def root
      @root ||= File.expand_path(File.join(File.dirname(__FILE__), "..")).freeze
    end
    
    def setup_database_connection!
      DataMapper::Logger.new(Config[:log_file], Config[:log_level])
      DataMapper.setup(:default, YAML::load_file(Config[:db_config]))
    end
  end
end
