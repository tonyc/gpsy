require(File.join(File.dirname(__FILE__), 'config', 'boot'))
require 'rake'

Dir["#{App.root}/lib/tasks/**/*.rake"].sort.each { |ext| load ext }

task :environment do
  App.setup_database_connection!
end
