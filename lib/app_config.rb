module App
  Config = {
    :db_config => File.join(App.root, "config", "database.yml").freeze,
    :log_file  => File.join(App.root, "log", "app.log").freeze,
    :log_level => :debug
  }.freeze
end