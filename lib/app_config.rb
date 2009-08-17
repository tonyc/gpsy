module App
  Config = {
    :db_config => File.expand_path(File.join(App.root, "config", "database.yml")).freeze,
    :log_file  => File.expand_path(File.join(App.root, "log", "app.log")).freeze,
    :log_level => :debug
  }.freeze
end