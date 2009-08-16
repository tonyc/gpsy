require 'rubygems'
require 'extlib'

$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'app'
require 'app_config'
require 'db_connection'

# Autoload any models
Dir.glob("app/models/*.rb") do |model_path|
  autoload Extlib::Inflection::classify(File.basename(model_path, ".rb")).to_sym, model_path
end

